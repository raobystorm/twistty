//+------------------------------------------------------------------+
//|                                                            Twist |
//|                                  Copyright 2018-2019, Raobystorm |
//|                            https://github.com/raobystorm/twistty |
//+------------------------------------------------------------------+
#include "Candle.mqh"
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class Stroke : public CObject
  {
protected:
   const Candle     *m_start_candle;
   const Candle     *m_end_candle;

public:
                     Stroke(void);
                    ~Stroke(void);
                     Stroke(const Candle *start,const Candle *end);

  }
//+------------------------------------------------------------------+
