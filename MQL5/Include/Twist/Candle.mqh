//+------------------------------------------------------------------+
//|                                                            Twist |
//|                                  Copyright 2018-2019, Raobystorm |
//|                            https://github.com/raobystorm/twistty |
//+------------------------------------------------------------------+
#include <Object.mqh>
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class Candle : public CObject
  {
protected:
   datetime          m_start_time;
   double            m_open;
   double            m_close;
   double            m_high;
   double            m_low;
   int               m_period;
   bool              m_ascend;

public:
                     Candle(void);
                     Candle(datetime time,double open,double close,double high,double low,int period,bool ascned):
   m_start_time(time),m_open(open),m_close(close),m_high(high),m_low(low),m_period(period),m_ascend(ascned) {};

                     Candle(const Candle *start,const Candle *end);
                    ~Candle(void);

  };
//+------------------------------------------------------------------+

Candle::Candle(void)
  {
   m_start_time=TimeCurrent();
   m_open = 0.0;
   m_close= 0.0;
   m_high = 0.0;
   m_low=0.0;
   m_period = 1;
   m_ascend = true;
  }
//+------------------------------------------------------------------+

Candle::~Candle(void)
  {
  }
//+------------------------------------------------------------------+

Candle::Candle(const Candle *first,const Candle *second)
  {
   const Candle *start;
   const Candle *end;
   if(first.m_start_time-second.m_start_time>0)
     {
      start=first;
        }else {
      start=second;
     }
   if(first.m_start_time+first.m_period>=second.m_start_time+second.m_period)
   {
      end=fisrt;
      }else {
      end=second;
   }
   m_start_time=start.m_start_time;
   m_open=start.open;
   m_close=end.close;
   m_period=(end.m_start_time+period)-m_start_time;
   
  }
//+------------------------------------------------------------------+
