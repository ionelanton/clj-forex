void Custom_MACD (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_FastEMA = StrToInteger(request[8]);
int i_SlowEMA = StrToInteger(request[9]);
int i_SignalSMA = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"MACD",i_FastEMA,i_SlowEMA,i_SignalSMA,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_RSI (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_RSIPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"RSI",i_RSIPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Bands (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_BandsPeriod = StrToInteger(request[8]);
int i_BandsShift = StrToInteger(request[9]);
double i_BandsDeviations = StrToDouble(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Bands",i_BandsPeriod,i_BandsShift,i_BandsDeviations,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Moving_Averages (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_MA_Period = StrToInteger(request[8]);
int i_MA_Shift = StrToInteger(request[9]);
int i_MA_Method = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Moving Averages",i_MA_Period,i_MA_Shift,i_MA_Method,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_FantailVMA3 (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_ADX_Length = StrToInteger(request[8]);
double i_Weighting = StrToDouble(request[9]);
int i_MA_Length = StrToInteger(request[10]);
int i_MA_Mode = StrToInteger(request[11]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"FantailVMA3",i_ADX_Length,i_Weighting,i_MA_Length,i_MA_Mode,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Bulls (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_BullsPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Bulls",i_BullsPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_DinapoliTargetsAlerts (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_barn = StrToInteger(request[8]);
int i_Length = StrToInteger(request[9]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"DinapoliTargetsAlerts",i_barn,i_Length,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Momentum (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_MomPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Momentum",i_MomPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Alligator (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_JawsPeriod = StrToInteger(request[8]);
int i_JawsShift = StrToInteger(request[9]);
int i_TeethPeriod = StrToInteger(request[10]);
int i_TeethShift = StrToInteger(request[11]);
int i_LipsPeriod = StrToInteger(request[12]);
int i_LipsShift = StrToInteger(request[13]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Alligator",i_JawsPeriod,i_JawsShift,i_TeethPeriod,i_TeethShift,i_LipsPeriod,i_LipsShift,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_ATR (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_AtrPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"ATR",i_AtrPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_iExposure (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  color i_ExtColor = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"iExposure",i_ExtColor,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Stochastic (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_KPeriod = StrToInteger(request[8]);
int i_DPeriod = StrToInteger(request[9]);
int i_Slowing = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Stochastic",i_KPeriod,i_DPeriod,i_Slowing,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Bears (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_BearsPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Bears",i_BearsPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_CCI (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_CCIPeriod = StrToInteger(request[8]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"CCI",i_CCIPeriod,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Heiken_Ashi (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  color i_color1 = StrToInteger(request[8]);
color i_color2 = StrToInteger(request[9]);
color i_color3 = StrToInteger(request[10]);
color i_color4 = StrToInteger(request[11]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Heiken Ashi",i_color1,i_color2,i_color3,i_color4,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Ichimoku (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_Tenkan = StrToInteger(request[8]);
int i_Kijun = StrToInteger(request[9]);
int i_Senkou = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Ichimoku",i_Tenkan,i_Kijun,i_Senkou,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_ZigZag (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_ExtDepth = StrToInteger(request[8]);
int i_ExtDeviation = StrToInteger(request[9]);
int i_ExtBackstep = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"ZigZag",i_ExtDepth,i_ExtDeviation,i_ExtBackstep,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Accelerator (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Accelerator",mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Parabolic (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  double i_Step = StrToDouble(request[8]);
double i_Maximum = StrToDouble(request[9]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Parabolic",i_Step,i_Maximum,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Awesome (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Awesome",mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_Accumulation (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"Accumulation",mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


void Custom_OsMA (string request[]) {
  string symbol = request[1];
  int timeframe = StrToInteger(request[2]);
  int mode = StrToInteger(request[3]); 
  int from_date = StrToInteger(request[4]);
  int to_date = StrToInteger(request[5]);
  int min = StrToInteger(request[6]);
  int max = StrToInteger(request[7]); 

  int i_FastEMA = StrToInteger(request[8]);
int i_SlowEMA = StrToInteger(request[9]);
int i_SignalSMA = StrToInteger(request[10]);

 
  //set from and to, based on min and max!!!
  int from = iBarShift(symbol,timeframe,from_date);
  //if to_date is zero, max is # of bars, 
  int to = from+max-1; 
  if (to_date!=0)
    to = iBarShift(symbol,timeframe,to_date);
    
  int err = GetLastError();
  if (err!=0) {
    send_error(err);
    return;
  }
  
  if (to_date!=0) {
    if (to-from+1>max) {
       to = from+max-1;
    }
    if (to-from+1<min) {
       to = from+min-1;
    }
  }
  //
  
  to = MathMin(to,iBars(symbol,timeframe)-1);
  double array[];
  ArrayResize(array,to-from+1);
  int j=0;
  for (int i=to;i>=from;i--) {
    array[j] = iCustom(symbol,timeframe,"OsMA",i_FastEMA,i_SlowEMA,i_SignalSMA,mode,i);
    j+=1;
  } 
  err = GetLastError(); 
  if (err!=0) {
    send_error(err);
    return;
  } 
  send_array(array);
 }


int process_INDICATORS_CUSTOM(string c,string command[]) {
if (c=="0") {
}
else if (c=="Custom_MACD") {
Custom_MACD(command);
}
else if (c=="Custom_RSI") {
Custom_RSI(command);
}
else if (c=="Custom_Bands") {
Custom_Bands(command);
}
else if (c=="Custom_Moving_Averages") {
Custom_Moving_Averages(command);
}
else if (c=="Custom_FantailVMA3") {
Custom_FantailVMA3(command);
}
else if (c=="Custom_Bulls") {
Custom_Bulls(command);
}
else if (c=="Custom_DinapoliTargetsAlerts") {
Custom_DinapoliTargetsAlerts(command);
}
else if (c=="Custom_Momentum") {
Custom_Momentum(command);
}
else if (c=="Custom_Alligator") {
Custom_Alligator(command);
}
else if (c=="Custom_ATR") {
Custom_ATR(command);
}
else if (c=="Custom_iExposure") {
Custom_iExposure(command);
}
else if (c=="Custom_Stochastic") {
Custom_Stochastic(command);
}
else if (c=="Custom_Bears") {
Custom_Bears(command);
}
else if (c=="Custom_CCI") {
Custom_CCI(command);
}
else if (c=="Custom_Heiken_Ashi") {
Custom_Heiken_Ashi(command);
}
else if (c=="Custom_Ichimoku") {
Custom_Ichimoku(command);
}
else if (c=="Custom_ZigZag") {
Custom_ZigZag(command);
}
else if (c=="Custom_Accelerator") {
Custom_Accelerator(command);
}
else if (c=="Custom_Parabolic") {
Custom_Parabolic(command);
}
else if (c=="Custom_Awesome") {
Custom_Awesome(command);
}
else if (c=="Custom_Accumulation") {
Custom_Accumulation(command);
}
else if (c=="Custom_OsMA") {
Custom_OsMA(command);
}

else
	     {
return(-1);
}
return(0);
}