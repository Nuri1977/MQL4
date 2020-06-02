//+------------------------------------------------------------------+
//|                                                        Blank.mq4 |
//|                                       Copyright 2019, Nuri Lacka |
//|                                              nurilacka@gmail.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, Nuri Lacka"
#property link      "nurilacka@gmail.com"
#property version   "1.00"
#property strict

extern int StopLoss=500;
extern double RiskPerTrade=0.03;
double Lots;


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+

int init()
  {
//---

//---
   return(0);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
int deinit()
  {
//---

//---
  return(0);   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
int start()
  {
//---

//---





//-------------------------------------------------------------------------

string ValutaSmetka=AccountCurrency();
string ValutenPar=Symbol();


double LotSize=MarketInfo(Symbol(),MODE_LOTSIZE);

double Cena_EURUSD=MarketInfo ("EURUSD",MODE_ASK);
double Cena_USDJPY=MarketInfo ("USDJPY",MODE_ASK);
double Cena_USDCHF=MarketInfo ("USDCHF",MODE_ASK);
double Cena_USDCAD=MarketInfo ("USDCAD",MODE_ASK);
double Cena_GBPUSD=MarketInfo ("GBPUSD",MODE_ASK);
double Cena_NZDUSD=MarketInfo ("NZDUSD",MODE_ASK);
double Cena_AUDUSD=MarketInfo ("AUDUSD",MODE_ASK);


double Cena_Valuta=Cena_EURUSD;

double PointsValue01=(Point/Cena_Valuta)*LotSize;
int PointsValue_EURUSD=PointsValue01*100;
int PointsValue_USDJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_USDCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_USDCAD=PointsValue01*100/(Cena_USDCAD);
int PointsValue_CADCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_CADJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_CHFJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_GBPAUD=PointsValue01*100*Cena_AUDUSD;
int PointsValue_GBPCAD=PointsValue01*100/(Cena_USDCAD);
int PointsValue_GBPCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_GBPJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_GBPNZD=PointsValue01*100*Cena_NZDUSD;
int PointsValue_GBPUSD=PointsValue01*100;
int PointsValue_NZDCAD=PointsValue01*100/(Cena_USDCAD);
int PointsValue_NZDCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_NZDJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_NZDUSD=PointsValue01*100;
int PointsValue_EURAUD=PointsValue01*100*Cena_AUDUSD;
int PointsValue_EURCAD=PointsValue01*100/(Cena_USDCAD);
int PointsValue_EURCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_EURGBP=PointsValue01*100*Cena_GBPUSD;
int PointsValue_EURJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_EURNZD=PointsValue01*100*Cena_NZDUSD;
int PointsValue_AUDCAD=PointsValue01*100/(Cena_USDCAD);
int PointsValue_AUDCHF=PointsValue01*100/(Cena_USDCHF);
int PointsValue_AUDJPY=PointsValue01*100/(Cena_USDJPY);
int PointsValue_AUDUSD=PointsValue01*100;
int PointsValue_AUDNZD=PointsValue01*100*Cena_NZDUSD;

//-------------------------------DEFINING POINT VALUE ----------------------
double PointValue_CurrentChart;

if(Symbol()=="EURUSD")
{
PointValue_CurrentChart=PointsValue01;
}

if(Symbol()=="USDJPY")
{
PointValue_CurrentChart=PointsValue_USDJPY;
}

if(Symbol()=="USDCHF")
{
PointValue_CurrentChart=PointsValue_USDCHF;
}

if(Symbol()=="USDCAD")
{
PointValue_CurrentChart=PointsValue_USDCAD;
}

if(Symbol()=="EURAUD")
{
PointValue_CurrentChart=PointsValue_EURAUD;
}

if(Symbol()=="EURCAD")
{
PointValue_CurrentChart=PointsValue_EURCAD;
}

if(Symbol()=="EURCHF")
{
PointValue_CurrentChart=PointsValue_EURCHF;
}

if(Symbol()=="EURNZD")
{
PointValue_CurrentChart=PointsValue_EURNZD;
}

if(Symbol()=="EURGBP")
{
PointValue_CurrentChart=PointsValue_EURGBP;
}

if(Symbol()=="EURJPY")
{
PointValue_CurrentChart=PointsValue_EURJPY;
}

if(Symbol()=="GBPAUD")
{
PointValue_CurrentChart=PointsValue_GBPAUD;
}

if(Symbol()=="GBPCAD")
{
PointValue_CurrentChart=PointsValue_GBPCAD;
}

if(Symbol()=="GBPCHF")
{
PointValue_CurrentChart=PointsValue_GBPCHF;
}

if(Symbol()=="GBPJPY")
{
PointValue_CurrentChart=PointsValue_GBPJPY;
}

if(Symbol()=="GBPNZD")
{
PointValue_CurrentChart=PointsValue_GBPNZD;
}

if(Symbol()=="GBPUSD")
{
PointValue_CurrentChart=PointsValue_GBPUSD;
}

if(Symbol()=="NZDCAD")
{
PointValue_CurrentChart=PointsValue_NZDCAD;
}

if(Symbol()=="NZDCHF")
{
PointValue_CurrentChart=PointsValue_NZDCHF;
}

if(Symbol()=="NZDUSD")
{
PointValue_CurrentChart=PointsValue_NZDUSD;
}

if(Symbol()=="NZDJPY")
{
PointValue_CurrentChart=PointsValue_NZDJPY;
}

if(Symbol()=="AUDCAD")
{
PointValue_CurrentChart=PointsValue_AUDCAD;
}

if(Symbol()=="AUDCHF")
{
PointValue_CurrentChart=PointsValue_AUDCHF;
}

if(Symbol()=="AUDJPY")
{
PointValue_CurrentChart=PointsValue_AUDJPY;
}

if(Symbol()=="AUDUSD")
{
PointValue_CurrentChart=PointsValue_AUDUSD;
}

if(Symbol()=="AUDNZD")
{
PointValue_CurrentChart=PointsValue_AUDNZD;
}

if(Symbol()=="CADCHF")
{
PointValue_CurrentChart=PointsValue_CADCHF;
}

if(Symbol()=="CADJPY")
{
PointValue_CurrentChart=PointsValue_CADJPY;
}

if(Symbol()=="CHFJPY")
{
PointValue_CurrentChart=PointsValue_CHFJPY;
}

//-------------------------------------LOT CALCULATOR--------------------------------------------
//-------------------------------------LOT CALCULATOR--------------------------------------------
//-------------------------------------LOT CALCULATOR--------------------------------------------
int Risk_Amount=(AccountFreeMargin()*RiskPerTrade);
double Iznos_Risk_Points=(AccountFreeMargin()*RiskPerTrade)/StopLoss;
double Lots_start_decimals=Iznos_Risk_Points/(PointValue_CurrentChart/100);
int Lots_start_norm=Lots_start_decimals*100;
double Lots_start=Lots_start_norm*0.01;

//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

   
   
//--
Comment("If Stop Loss is ",StopLoss," points and you risk ",RiskPerTrade*100,"% of free margin, amount of ",Risk_Amount,"(",ValutaSmetka,"). Than put your lot=",Lots_start);
//--
  return(0);  
  }
//+------------------------------------------------------------------+
