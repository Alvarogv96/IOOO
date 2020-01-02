{10.2.1.2978}
{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Product], pDir([Atoms\BASIC MODELING\Product.atm]));
int035([Queue], pDir([Atoms\BASIC MODELING\Queue.atm]));
int035([Server], pDir([Atoms\BASIC MODELING\Server.atm]));
int035([Sink], pDir([Atoms\BASIC MODELING\Sink.atm]));
int035([Source], pDir([Atoms\BASIC MODELING\Source.atm]));
int035([MultiService], pDir([Atoms\PROCESSES\MultiService.atm]));
int012;


{Atom: Source1}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, s, [Source1], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [NegExp(4)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [NegExp(4)]);
SetExprAtt([MaxProducts], [{.-1|1. Unlimited.} -1 ]);
SetAtt([Icon3D], 4);
int023([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(1);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-12, -2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
int018;


{Atom: Source2}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Source2], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [NegExp(3)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [NegExp(3)]);
SetExprAtt([MaxProducts], [{.-1|1. Unlimited.} -1 ]);
SetAtt([Icon3D], 4);
int023([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(2);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-12, 2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
int018;


{Atom: Source3}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Source3], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetExprAtt([CycleTime], [NegExp(300)]);
SetExprAtt([CreationTrigger], [{.0|10. Do Nothing.}0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([FirstProduct], [NegExp(300)]);
SetExprAtt([MaxProducts], [{.-1|1. Unlimited.} -1 ]);
SetAtt([Icon3D], 4);
int023([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(3);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-12, 6, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(2);
int018;


{Atom: Queue4}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue4], 1, false);
SetExprAtt([SendTo], [{.IndexMax(NrOC(c), OCReady(Count,c)*Random(100000))|4. A random open channel: choose a random channel from all the open output channels..}IndexMax(NrOC(c), OCReady(Count,c)*Random(100000))]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 3);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(4);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(-7, -2, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Queue5}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue5], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 2);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(5);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-7, 2, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Queue6}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue6], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 4.5);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(6);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-7, 6, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Product], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 1);
int023([], 12615680, 73745);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(DdbRec, [>drawxsize:1.>drawysize:1.]);
int001(7);
SetLoc(-14, -2, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Product], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 1);
int023([], 12615680, 73745);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(DdbRec, [>drawxsize:1.>drawysize:1.]);
int001(8);
SetLoc(-14, 3, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: Product}

sets;
AtomByName([Product], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Product'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Product], 1, false);
SetAtt([Icon3D], 11);
SetAtt([Hide2DIcon], 1);
int023([], 12615680, 73745);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(DdbRec, [>drawxsize:1.>drawysize:1.]);
int001(9);
SetLoc(-14, 7, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(0);
int018;


{Atom: Fax}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Fax], 1, false);
SetExprAtt([CycleTime], [negexp(130)]);
SetExprAtt([SendTo], [{.~1|~Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))~.}Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))]);
SetExprAtt([BatchQty], [1]);
SetAtt([BatchRule], 1);
SetAtt([CurIn], 1);
SetAtt([CurOut], 1);
SetExprAtt([SetUpTime], [{.~1|~0~.}0]);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([mttf], [0]);
SetExprAtt([mttr], [0]);
SetAtt([TotalBusy], 0);
SetExprAtt([Utilization], [4DS[If( Time > 0, Concat( [Util: ], String ( *( 100, /( statustime(c,2), Time)), 0, 1), [ %]), [Util: 0 %])]4DS]);
SetAtt([CurCycle], 459.097088206233);
SetAtt([EndBusy], 0);
SetAtt([NextDown], 1E40);
SetAtt([CurRepairTime], 0);
SetExprAtt([InStrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetAtt([3DIcon], 7);
SetAtt([BusyFlag], 0);
SetExprAtt([mcbf], [0]);
SetAtt([nextmcbf], 0);
SetExprAtt([mttr2], [0]);
SetAtt([curmttr2], 0);
SetAtt([LastStatus1], 0);
SetAtt([LastStatus2], 0);
SetAtt([CyclesCounter], 0);
SetAtt([LastDown], 0);
SetAtt([SecondColor], 677797);
SetExprAtt([mtbf], [mttf]);
SetAtt([BeginBusy], 86024.6986407421);
SetExprAtt([EndOfSetupTrigger], [0]);
SetExprAtt([BreakdownTrigger], [0]);
SetExprAtt([RepairTrigger], [0]);
int023([], 292315, 263344);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(12);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-1, 6, 0);
SetSize(7, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: Queue17}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue17], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 4.5);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(4, 1);
SetChannelRanges(1, 255, 1, 255);
int001(17);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
SetLoc(12, -3, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Queue18}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue18], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 3);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(3, 1);
SetChannelRanges(1, 255, 1, 255);
int001(18);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(12, 0, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Queue19}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue19], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 4.5);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(3, 1);
SetChannelRanges(1, 255, 1, 255);
int001(19);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(12, 4, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Queue20}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Queue20], 1, false);
SetExprAtt([SendTo], [{.~1|~1~.}1]);
SetAtt([Capacity], 10000);
SetExprAtt([EntryTrigger], [0]);
SetExprAtt([ExitTrigger], [0]);
SetExprAtt([QueueDiscipline], [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt([DrawLoc], 2.5);
SetExprAtt([InStrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt([3DIcon], 2);
int023([], 12615680, 176);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(4, 1);
SetChannelRanges(1, 255, 1, 255);
int001(20);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
SetLoc(12, 7, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(13);
int018;


{Atom: Errores}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Errores], 1, false);
SetExprAtt([EntryTrigger], [0]);
SetAtt([Icon3D], 4);
int023([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(Model3DDir([sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([sink_Resized.wrl]), [sink_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
SetChannels(3, 0);
SetChannelRanges(1, 255, 0, 0);
int001(21);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(5, 10, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: Sink22}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Sink22], 1, false);
SetAtt([EntryTrigger], 0);
SetAtt([Icon3D], 4);
int023([], 7168771, 176);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(Model3DDir([sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([sink_Resized.wrl]), [sink_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
SetChannels(4, 0);
SetChannelRanges(1, 255, 0, 0);
int001(22);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
SetLoc(29, 2, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetStatus(1);
int018;


{Atom: Llamadas Telefonicas}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Llamadas Telefonicas], 1, false);
SetAtt([capacity], 5);
SetExprAtt([cycletime], [negexp(16)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))~.}Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))]);
SetExprAtt([instrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(23);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-1, -2, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;


{Atom: Internet}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Internet], 1, false);
SetAtt([capacity], 5);
SetExprAtt([cycletime], [negexp(12)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))~.}Bernoulli(10,5,Bernoulli(80,1,Bernoulli(50,2,Bernoulli(20,3,4))))]);
SetExprAtt([instrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 5);
SetChannelRanges(1, 255, 1, 255);
int001(24);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
int013(4, 0, true, false, 0, 0, [], []);
int013(5, 0, true, false, 0, 0, [], []);
SetLoc(-1, 2, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;


{Atom: Consultas Facturas}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Consultas Facturas], 1, false);
SetAtt([capacity], 30);
SetExprAtt([cycletime], [negexp(60)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~1~.}1]);
SetExprAtt([instrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(25);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(20, -3, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;


{Atom: Nuevos Clientes}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Nuevos Clientes], 1, false);
SetAtt([capacity], 12);
SetExprAtt([cycletime], [negexp(180)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~1~.}1]);
SetExprAtt([instrategy], [{.openallic(c)|1. Any inputchannel -  First channel first.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(26);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(20, 0, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;


{Atom: Reclamaciones}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Reclamaciones], 1, false);
SetAtt([capacity], 3);
SetExprAtt([cycletime], [negexp(240)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~Bernoulli(10,1,Bernoulli(20,2,3))~.}Bernoulli(10,1,Bernoulli(20,2,3))]);
SetExprAtt([instrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 3);
SetChannelRanges(1, 255, 1, 255);
int001(27);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
int013(3, 0, true, false, 0, 0, [], []);
SetLoc(20, 4, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;


{Atom: Servicio Tecnico}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [Servicio Tecnico], 1, false);
SetAtt([capacity], 16);
SetExprAtt([cycletime], [negexp(300)]);
SetAtt([curcycle], 0);
SetAtt([nblocked], 0);
SetExprAtt([sendto], [{.~1|~1~.}1]);
SetExprAtt([instrategy], [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt([entrytrigger], [0]);
SetExprAtt([exittrigger], [0]);
SetAtt([counter], 0);
SetAtt([2ddisplay], 1);
SetAtt([Levelcolor], 0);
SetTextAtt([QtyBatchRules], [1]);
SetExprAtt([BatchOn], [{.ic(c)|1. Batch by input channel..}ic(c)]);
int023([], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(28);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(20, 7, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetTable(1, 5);
int015(0, 64, [0
1
]);
int015(1, 107, [`Batch indicator`
`IC_001`
]);
int015(2, 105, [`Incoming product`
1
]);
int015(3, 114, [`Outgoing product`
1
]);
int015(4, 128, [`Currently gathered`
0
]);
int015(5, 64, [`PointOfFirstProduct`
0
]);
SetStatus(1);
int018;
Up;
int014(1, 1, 1, 4, 0);
int014(0, 7, 1, 1, 0);
int014(1, 2, 1, 5, 0);
int014(0, 8, 1, 2, 0);
int014(1, 3, 1, 6, 0);
int014(0, 9, 1, 3, 0);
int014(1, 4, 1, 23, 0);
int014(1, 5, 1, 24, 0);
int014(1, 6, 1, 12, 0);
int014(1, 12, 3, 17, 0);
int014(2, 12, 3, 18, 0);
int014(3, 12, 3, 19, 0);
int014(4, 12, 3, 20, 0);
int014(5, 12, 3, 21, 0);
int014(1, 17, 1, 25, 0);
int014(1, 23, 1, 17, 0);
int014(1, 24, 2, 17, 0);
int014(1, 27, 4, 17, 0);
int014(1, 18, 1, 26, 0);
int014(2, 23, 1, 18, 0);
int014(2, 24, 2, 18, 0);
int014(1, 19, 1, 27, 0);
int014(3, 23, 1, 19, 0);
int014(3, 24, 2, 19, 0);
int014(1, 20, 1, 28, 0);
int014(4, 23, 1, 20, 0);
int014(4, 24, 2, 20, 0);
int014(2, 27, 4, 20, 0);
int014(5, 23, 1, 21, 0);
int014(5, 24, 2, 21, 0);
int014(1, 25, 1, 22, 0);
int014(1, 26, 2, 22, 0);
int014(3, 27, 3, 22, 0);
int014(1, 28, 4, 22, 0);
int006(1.31992343627804, 1, 1, 0, 0, 0);
int006(4.05026137191939, 2, 1, 0, 0, 0);
int006(4.58662934526759, 3, 1, 0, 0, 0);


{Experiment settings}

int032(1, 2, 4);
int033(1, 1, 1, [RESULTS]);
int033(1, 1, 2, [1]);
int033(1, 1, 3, [1]);
int033(1, 1, 4, [4]);
int033(1, 2, 1, [prueba]);
int033(1, 2, 2, [2]);
int033(1, 2, 3, [prueba]);
int033(1, 2, 4, [4DS[[OUTPUT]]4DS]);
int032(2, 1, 8);
int033(2, 1, 1, [prueba]);
int033(2, 1, 2, [Consultas Facturas]);
int033(2, 1, 3, [Fax]);
int033(2, 1, 4, [Internet]);
int033(2, 1, 5, [Llamadas Telefonicas]);
int033(2, 1, 6, [Nuevos Clientes]);
int033(2, 1, 7, [Reclamaciones]);
int033(2, 1, 8, [Servicio Tecnico]);
int034;
SetAtt(1, 1);
SetExprAtt(2, [hr(24)]);
SetExprAtt(3, [0]);
SetAtt(4, 1);
SetAtt(5, 1);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetAtt(13, 4);
SetTextAtt(14, [C:\Users\Alvaro\Documents\Enterprise Dynamics\10.2\]);
SetAtt(17, 1);

{Saved Model3D settings.}

int007;
