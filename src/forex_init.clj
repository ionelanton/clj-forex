
;;TODO: bug when no account is connected! yikes!
 
;;forex_init is where the init function is located which will be called on lein run of clj-forex. 
(clojure.core/use 'nstools.ns)
(ns+ forex-init  
 (:clone forex.default) 
 (:use forex.interface.gui forex.util.log clj.io))

(defn init []
  (require :reload 'forex.examples.timeout-ea.timeout-ea)
  (when-not (backend/alive?)
    (backend/start))

  (when-not log-file
    (setq forex.util.log/log
	  (new-logger (.replaceAll
		       (format "log_%s.txt" (now)) ":" "_"))))

;;ALL ABOUT AUTOSAVING
  (defvar ea-auto-save-minutes  5)
  (defvar ea-auto-save-file
    (let [file (format "%s/.forex/auto/ea-auto-save"
		       (System/getProperty "user.home"))]
      (make-parents file)
      file))  
  (defonce ea-auto-save-thread (doto (thread
				      (loop []
					(sleep (* 60 ea-auto-save-minutes))
					(when-not (empty? @*eas*)
					  (save-eas ea-auto-save-file))
					(recur)))
				 (.setName "ea auto save")))

  (add-to-list #'ea-on-exit-hook #(when-not (empty? @*eas*) (save-eas ea-auto-save-file)))
  (add-to-list #'ea-on-start-hook #(when-not (empty? @*eas*) (save-eas ea-auto-save-file)))

  (defonce ea-shutdown-hook (Thread. #(save-eas ea-auto-save-file 500)))
  (add-shutdown-hook ea-shutdown-hook))

(init)