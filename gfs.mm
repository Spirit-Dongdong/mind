<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1358761487053" ID="2qhaoej8aojq6k1a2p46pe91ss" MODIFIED="1358923942585">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>GFS</b>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1358761487053" ID="7455u7ltlbl808oslf8cvlga43" MODIFIED="1358927405884" POSITION="right" TEXT="Introduction">
<node CREATED="1358761487053" ID="6lk1lmjbvkj6egufacpq7e9l2q" MODIFIED="1358761487053" TEXT="component failures are common rather than exceptions"/>
<node CREATED="1358761487053" ID="6auohkb7tm9qndj71ktuef6kli" MODIFIED="1358761487053" TEXT="huge files"/>
<node CREATED="1358761487053" ID="0qrgj771psf626vkb8dboe1bi0" MODIFIED="1358761878178" TEXT="most files are mutated by appending rather than overwritting, no random writes."/>
</node>
<node CREATED="1358761487053" ID="4o8ig00i6p2g63c04r3doirrlr" MODIFIED="1358928026283" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Design
    </p>
  </body>
</html></richcontent>
<node CREATED="1358761487053" ID="1as5gs67c8mdl5hu84gerapsgo" MODIFIED="1358761487053" TEXT="Assumtions">
<node CREATED="1358761487053" ID="1ctl4h9mah673g5uc4ertoedui" MODIFIED="1358761487053" TEXT="support detect, tolerate, recover"/>
<node CREATED="1358761487054" ID="5s6ma1coknej2spm9dtopkllaq" MODIFIED="1358761487054" TEXT="big files"/>
<node CREATED="1358761487054" ID="4l9f7um6n9t2501ddfaeqn59vd" MODIFIED="1358761487054" TEXT="large streaming reads &amp; small random reads"/>
<node CREATED="1358761487054" ID="1g047dga3m0graua03tlv76c5d" MODIFIED="1358761487054" TEXT="appending writes"/>
<node CREATED="1358761487054" ID="4u7m4m1h281609u645ro613dnh" MODIFIED="1358762058397" TEXT="support multi-client concurrently append to same file"/>
<node CREATED="1358761487054" ID="4nl05ilcc2ssjnu2ip666lpqbn" MODIFIED="1358761487054" TEXT="high bandwidth &gt; low latency"/>
</node>
<node COLOR="#f80b0b" CREATED="1358761487054" ID="4t3spca5u050qh9gek7mde62sk" MODIFIED="1358763605383" TEXT="Interface">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1358761487054" ID="3mv3l6ue3hbp5g27251svcpf9l" MODIFIED="1358761487054" TEXT="create"/>
<node CREATED="1358761487054" ID="15njg6kol0a92sr6hdfb2ts8rs" MODIFIED="1358761487054" TEXT="delete"/>
<node CREATED="1358761487054" ID="5d4v6anbt8rpol4qhli4pfaf59" MODIFIED="1358761487054" TEXT="open"/>
<node CREATED="1358761487054" ID="7skd5f42d76e4palntjhr8lc5s" MODIFIED="1358761487054" TEXT="close"/>
<node CREATED="1358761487054" ID="1tif5vlreupmo3pinpaf6bc4he" MODIFIED="1358761487054" TEXT="read"/>
<node CREATED="1358761487054" ID="39jtq4cs97mdv3rkd895j0sgb3" MODIFIED="1358837248824" TEXT="write: &#x5728;&#x6307;&#x5b9a;&#x7684;offset&#x5904;&#x5199;"/>
<node CREATED="1358761487054" ID="14rrhmf1t4njptg4gpft4kcn43" MODIFIED="1358761487054" TEXT="snapshot"/>
<node CREATED="1358761487054" ID="66rn7tn0qgtjksdtkhehqc7f3g" MODIFIED="1358928055796" TEXT="record append: atomically, &#x76f8;&#x5f53;&#x4e8e;&#x6ca1;&#x6709;&#x7ade;&#x6001;&#x6761;&#x4ef6;&#x7684;O_APPEND"/>
</node>
<node CREATED="1358761487054" ID="5ntvp5nmgpqcib4qbs9h3ngvjp" MODIFIED="1358823637143">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Architecture
    </p>
  </body>
</html></richcontent>
<node COLOR="#0e0404" CREATED="1358761487054" ID="0slar8r0t3c6iko79nop6sj35s" MODIFIED="1358762391027">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strong>master:</strong>&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;maintains fs metadata
    </p>
    <p>
      &#160;&#160;&#160;&#160;chunk lease management
    </p>
    <p>
      &#160;&#160;&#160;&#160;gc of orphaned chunks
    </p>
    <p>
      &#160;&#160;&#160;&#160;chunks migration between chunkserver
    </p>
    <p>
      &#160;&#160;&#160;&#160;HEARTBEAT
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1358761487054" ID="0m1f703n9s2d2ooff5e8bqr23e" MODIFIED="1358763372497">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>multiple chunkservers : </b>
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1358761487054" ID="51lrm3m2u8rdjl4meim2edret1" MODIFIED="1358763585217">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strong>chunks:</strong>&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;fixed-sized
    </p>
    <p>
      &#160;&#160;&#160;&#160;64 bit chunk handle assigned by master
    </p>
    <p>
      &#160;&#160;&#160;&#160;replica
    </p>
    <p>
      &#160;&#160;&#160;&#160;not cache file data cuz already have Linux buffer cache
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358763299141" ID="ID_370672486" MODIFIED="1358763540847">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Clients:</b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;impl fs API
    </p>
    <p>
      &#160;&#160;&#160;&#160;communicates with master &amp; chunkservers
    </p>
    <p>
      &#160;&#160;&#160;&#160;no cache file data, but cache metadata
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358823638709" ID="ID_688471041" MODIFIED="1358823695028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../选区_004.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358763595671" ID="ID_1756627843" MODIFIED="1358824031971" TEXT="Single Master">
<node COLOR="#ff6666" CREATED="1358824000992" ID="ID_1522396954" MODIFIED="1358927441820" STYLE="bubble" TEXT="&#x4ea4;&#x4e92;&#x6b65;&#x9aa4;&#xff1a;">
<node CREATED="1358763758976" ID="ID_394585177" MODIFIED="1358927441821" TEXT="Client req includes filename &amp; chunk index">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1358763800451" ID="ID_1969008194" MODIFIED="1358927441821" TEXT="Master return chunk handle &amp; chunk locations">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1358763822698" ID="ID_588200627" MODIFIED="1358927441822" TEXT="Client cache handle &amp; location as key">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1358764003485" ID="ID_320990754" MODIFIED="1358927441822" TEXT="Client reqs to one replicas,&#x4ece;&#x8fd9;&#x65f6;&#x8d77;&#x8bfb;&#x540c;&#x4e00;&#x4e2a;&#x5757;&#xff0c;client&#x548c;master&#x6ca1;&#x6709;&#x4ea4;&#x4e92;&#xff0c;&#x9664;&#x975e;metadata&#x8fc7;&#x671f;">
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1358824033753" ID="ID_1767849750" MODIFIED="1358927444872">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Metadata</b>:Store in memory
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#20026;&#27599;&#20010;chunk&#32500;&#25252;&#19968;&#20221;&#23567;&#20110;64kb&#30340;metadata
    </p>
    <p>
      &#160;&#160;&#160; <b>poll</b>&#160;chunkservers for chunk locations
    </p>
  </body>
</html></richcontent>
<node CREATED="1358824049092" ID="ID_1180166789" MODIFIED="1358824056470" TEXT="file &amp; chunk namespaces"/>
<node CREATED="1358824057558" ID="ID_169398117" MODIFIED="1358824067246" TEXT="mapping from file to chunks"/>
<node CREATED="1358824069742" ID="ID_652253981" MODIFIED="1358824211451">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      locations of each chunk's replicas---<font color="#ed0a0a">not persistently</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1358835455028" ID="ID_1754505401" MODIFIED="1358835462714" TEXT="Consistency Model">
<node CREATED="1358835465214" ID="ID_83701019" MODIFIED="1358910279517" TEXT="Guarantees by GFS">
<node CREATED="1358835479689" ID="ID_424876621" MODIFIED="1358837177318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../选区_005.png" />
  </body>
</html></richcontent>
<node CREATED="1358835498835" ID="ID_46663934" MODIFIED="1358836355225">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>consistent:</b>&#160;&#160;all clients see same data
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358835503592" ID="ID_120364568" MODIFIED="1358836132983">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <strong>defined:</strong>&#160;file data mutation is consistent &amp; all clients see the mutation
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358835506724" ID="ID_1221810293" MODIFIED="1358836325321">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <b>undefined but consistent</b>: all clients see same data, but may not reflect what any one mutation has written.
  </body>
</html></richcontent>
</node>
<node CREATED="1358835543045" ID="ID_792412779" MODIFIED="1358836341897">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>inconsistent: </b>failed mutation
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358837187195" ID="ID_1730080186" MODIFIED="1358927463588" STYLE="bubble" TEXT="mutation processing">
<node CREATED="1358909371556" ID="ID_698748472" MODIFIED="1358927463589" TEXT="&#x4e00;&#x7cfb;&#x5217;&#x6210;&#x529f;&#x7684;mutation&#x540e;&#xff0c;mutated file&#x7684;region&#x88ab;&#x8bbe;&#x4e3a;defined&#xff0c;&#x5e76;&#x5df2;&#x5305;&#x542b;&#x6700;&#x540e;&#x4e00;&#x6b21;mutation&#x5199;&#x5165;&#x7684;&#x6570;&#x636e;">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1358909445399" ID="ID_1061270932" MODIFIED="1358927463593" TEXT="GFS achieves by applying mutations to a chunk in a same order on all its replicas">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1358909497779" ID="ID_848998807" MODIFIED="1358927463593" TEXT="GFS using &#x7248;&#x672c;&#x53f7;&#x6765;&#x68c0;&#x6d4b;&#x7531;&#x4e8e;chunkserver&#x6302;&#x6389;&#x4ece;&#x800c;&#x4e22;&#x5931;&#x4e86;&#x4e00;&#x4e9b;mutation&#x7684;&#x8fc7;&#x65f6;&#x7684;chunk replica">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1358910098890" ID="ID_1278513486" MODIFIED="1358927463594" TEXT="&#x8fc7;&#x65f6;&#x7684;replica&#x4e0d;&#x4f1a;&#x518d;&#x6d89;&#x53ca;&#x5230;mutation&#xff0c;client&#x5411;master&#x8981;chunk&#x4f4d;&#x7f6e;&#x65f6;&#x4e5f;&#x4e0d;&#x4f1a;&#x88ab;&#x8fd4;&#x56de;&#xff0c;&#x5e76;&#x4e14;&#x8fd8;&#x662f;GC&#x7684;&#x9ad8;&#x4f18;&#x5148;&#x56de;&#x6536;&#x5bf9;&#x8c61;">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1358910215253" ID="ID_1222511047" MODIFIED="1358927463597" TEXT="master&#x7528;&#x6821;&#x9a8c;&#x548c;&#x6765;&#x68c0;&#x67e5;chunkserver&#x7684;&#x6570;&#x636e;&#x51b2;&#x7a81;&#x3002;"/>
</node>
</node>
<node CREATED="1358910280835" ID="ID_1295764412" MODIFIED="1358927468195" TEXT="Implications for APP">
<node CREATED="1358911731301" ID="ID_403564505" MODIFIED="1358911741041" TEXT="relaxed consistency model"/>
<node CREATED="1358911741830" ID="ID_1478040770" MODIFIED="1358911751694" TEXT="checkpointing"/>
<node CREATED="1358911759624" ID="ID_431399669" MODIFIED="1358911770267" TEXT="writing self-validating"/>
</node>
</node>
</node>
<node CREATED="1358912202695" ID="ID_1433489138" MODIFIED="1358928599379" POSITION="left" TEXT="System interaction">
<node CREATED="1358912255311" ID="ID_521952089" MODIFIED="1358923108400">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lease &amp; Mutation order
    </p>
  </body>
</html></richcontent>
<node CREATED="1358912263341" ID="ID_1713604293" MODIFIED="1358912371155">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>mutation</b>: change the contents or metadata of a chunk
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358912308702" ID="ID_431656146" MODIFIED="1358912385131">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>lease: </b>maintain a consistent mutation order across replicas
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358912402564" ID="ID_1057540537" MODIFIED="1358912443507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      master grants a chunk lease to one of replicas which is <i><b>primary</b></i>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358922478642" ID="ID_1943758008" MODIFIED="1358922844044">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>primary: </b>picks a serial order for all mutations to the chunk
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358922988613" ID="ID_453643826" MODIFIED="1358924153106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../选区_006.png" />
  </body>
</html></richcontent>
<node CREATED="1358923007151" ID="ID_1257499517" MODIFIED="1358923909889" TEXT="Client&#x95ee;master&#xff0c;chunk&#x5f53;&#x524d;lease(&#x5373;primary)&#x7684;&#x662f;&#x5728;&#x54ea;&#x4e2a;chunkserver&#x4e0a;&#xff0c;&#x4ee5;&#x53ca;&#x5176;&#x4ed6;replicas&#x7684;&#x4f4d;&#x7f6e;">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1358923139757" ID="ID_892832506" MODIFIED="1358923915673" TEXT="Master&#x544a;&#x77e5;primary&#x7684;id&#x548c;&#x5176;&#x4ed6;replicas&#x7684;&#x4f4d;&#x7f6e;&#xff0c;&#x7136;&#x540e;client&#x628a;&#x8fd9;&#x4e9b;&#x4fe1;&#x606f;&#x7f13;&#x5b58;&#x8d77;&#x6765;&#x4ee5;&#x4fbf;&#x4e4b;&#x540e;&#x7684;mutation">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1358923222053" ID="ID_50516909" MODIFIED="1358923919041" TEXT="Client&#x628a;data push&#x5230;&#x6240;&#x6709;&#x7684;replica&#x4e0a;&#xff0c;&#x5404;&#x4e2a;chunkserver&#x4ee5;LRU&#x6765;&#x7f13;&#x5b58;&#x8fd9;&#x4e9b;data">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1358923394739" ID="ID_266501121" MODIFIED="1358923923137" TEXT="&#x6240;&#x6709;replicas&#x90fd;&#x63a5;&#x6536;&#x5230;data&#x540e;&#xff0c;client&#x5411;primary&#x53d1;&#x9001;&#x5199;&#x8bf7;&#x6c42;&#x3002;primary&#x7ed9;&#x6240;&#x6709;&#x6536;&#x5230;&#x7684;&#xff08;&#x53ef;&#x80fd;&#x6765;&#x81ea;&#x591a;&#x4e2a;client&#x7684;&#xff09;mutation&#x7528;&#x8fde;&#x7eed;&#x7684;&#x6570;&#x5b57;&#x7f16;&#x53f7;&#xff0c;&#x7136;&#x540e;&#x63d0;&#x4ea4;&#x5230;&#x81ea;&#x5df1;&#x7684;&#x672c;&#x5730;state&#x4e2d;">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1358923564229" ID="ID_1784537607" MODIFIED="1358923927009" TEXT="primary&#x628a;&#x5199;&#x8bf7;&#x6c42;&#x8f6c;&#x53d1;&#x7ed9;&#x6240;&#x6709;&#x7684;secondary replicas&#x4e2d;&#x3002;&#x8fd9;&#x4e9b;replicas&#x7684;mutation&#x987a;&#x5e8f;&#x90fd;&#x548c;primary&#x4e0a;&#x4e00;&#x6b65;&#x6307;&#x5b9a;&#x7684;&#x76f8;&#x540c;&#x3002;">
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1358923642838" ID="ID_247089297" MODIFIED="1358923930065" TEXT="&#x6240;&#x6709;&#x7684;replicas&#x544a;&#x77e5;primary&#xff0c;&#x5b83;&#x4eec;&#x5df2;&#x7ecf;&#x5b8c;&#x6210;&#x4e86;&#x5199;&#x64cd;&#x4f5c;&#x3002;">
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1358923693084" ID="ID_1427137248" MODIFIED="1358923934297" TEXT="primary&#x56de;&#x590d;&#x7ed9;client&#x3002;&#x4efb;&#x4f55;replicas&#x4e0a;&#x7684;&#x4efb;&#x4f55;&#x9519;&#x8bef;&#x90fd;&#x4f1a;&#x62a5;&#x544a;&#x7ed9;client&#x3002;&#x6709;&#x4e9b;&#x9519;&#x8bef;&#x53ef;&#x80fd;&#x5df2;&#x7ecf;&#x5728;primary&#x548c;&#x4e00;&#x4e9b;replicas&#x4e2d;&#x6210;&#x529f;&#x5199;&#x4e86;&#x3002;client&#x7684;request&#x8003;&#x8651;&#x5230;&#x4e86;&#x51fa;&#x9519;&#x7684;&#x60c5;&#x51b5;&#xff0c;&#x6240;&#x4ee5;&#x8fd9;&#x65f6;&#x7684;&#x72b6;&#x6001;&#x662f;inconsistent&#x7684;&#x3002;Client&#x91c7;&#x7528;retry&#x7684;&#x65b9;&#x5f0f;&#x5904;&#x7406;&#x9519;&#x8bef;&#xff1a;&#x91cd;&#x590d;3-7&#x7684;&#x6b65;&#x9aa4;">
<icon BUILTIN="full-7"/>
</node>
</node>
<node CREATED="1358924160841" ID="ID_235691682" MODIFIED="1358927674460">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Data FLow</b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1358927568916" ID="ID_492503342" MODIFIED="1358927635316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <b>fully utilize each machine's netword bandwidth&#65306;</b>data is pushed linearly rather than distributed
  </body>
</html>
</richcontent>
</node>
<node CREATED="1358927584445" ID="ID_1690546009" MODIFIED="1358927656068">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <b>avoid network bottlenecks &amp; high-latency links:</b>&#160;forwards data to the &quot;closest&quot; machine that has not received it
  </body>
</html>
</richcontent>
</node>
<node CREATED="1358927675622" ID="ID_658832407" MODIFIED="1358927849315">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Minimize latency: </b>pipelining the data transfer over TCP connections
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1358928599380" FOLDED="true" ID="ID_1249703759" MODIFIED="1358930276111">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Snapshot</b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1358928648770" ID="ID_994192658" MODIFIED="1358928670729" TEXT="standard COW techniques"/>
<node CREATED="1358928672691" ID="ID_1229676701" MODIFIED="1358928747198" TEXT="master revokes any outstanding leases"/>
<node CREATED="1358928712147" ID="ID_1526144799" MODIFIED="1358928804053" TEXT="master logs the operation to disk, then applies this log to its in-memory state by duplicating the metadata for the file"/>
</node>
<node CREATED="1358930278436" ID="ID_1414263556" MODIFIED="1358932166229">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Master operation</b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1358930297827" ID="ID_23101073" MODIFIED="1358931969557" TEXT="namespace manage &amp; locking">
<node CREATED="1358931252071" ID="ID_1480188886" MODIFIED="1358931966577">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      GFS's <b>namespace</b>&#160;is like a map.
    </p>
    <p>
      &#160;&#160;&#160; <b>KEY</b>: full pathname
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b>VALUE</b>:metadata
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#21069;&#32512;&#21387;&#32553;&#36825;&#20010;map
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#27599;&#20010;key&#65288;&#32477;&#23545;&#25991;&#20214;&#21517;/&#30446;&#24405;&#21517;&#65289;&#37117;&#20250;&#21644;&#19968;&#20010;&#35835;&#20889;&#38145;&#20851;&#32852;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#24819;&#25805;&#20316;&#19968;&#20010;&#25991;&#20214;&#65292;&#23601;&#35201;&#33719;&#24471;&#36825;&#20010;&#25991;&#20214;&#30340;&#38145;&#65288;&#35835;&#38145;&#25110;&#20889;&#38145;&#65289;&#65292;<b>&#20197;&#21450;&#36825;&#20010;&#25991;&#20214;&#25152;&#26377;&#29238;&#30446;&#24405;&#30340;&#38145; </b>
    </p>
    <p>
      <b>&#160;&#160;&#160; </b>&#23545;&#20110;&#21516;&#19968;&#30446;&#24405;&#30340;&#24182;&#21457;&#20462;&#25913;&#24456;&#26041;&#20415;&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#24182;&#21457;&#30340;&#22312;&#21516;&#19968;&#30446;&#24405;&#19979;&#21019;&#24314;&#33509;&#24178;&#25991;&#20214;&#65292;&#27599;&#20010;&#37117;&#38656;&#35201;&#36825;&#20010;&#30446;&#24405;&#19978;&#30340;&#35835;&#38145;&#20197;&#21450;&#25991;&#20214;&#21517;&#30340;&#20889;&#38145;&#65292;&#35835;&#38145;&#20445;&#35777;&#20102;&#36825;&#20010;&#30446;&#24405;&#19981;&#20250;&#34987;&#21024;&#38500;/&#37325;&#21629;&#21517;/snapshot&#12290;&#20889;&#38145;&#20445;&#35777;&#20102;&#19981;&#20250;&#21019;&#24314;2&#20010;&#30456;&#21516;&#21517;&#23383;&#30340;&#25991;&#20214;&#12290;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1358931981000" ID="ID_1968048750" MODIFIED="1358932121664">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20986;&#20110;&#33410;&#30465;&#36164;&#28304;&#30340;&#32771;&#34385;&#65292;&#35835;&#20889;&#38145;&#23545;&#35937;&#37117;&#26159;lazy&#20998;&#37197;&#65292;&#21482;&#35201;&#19981;&#20877;&#29992;&#21040;&#23601;&#21024;&#38500;&#12290;
    </p>
    <p>
      &#20026;&#36991;&#20813;&#27515;&#38145;&#65292;&#25152;&#26377;&#30340;&#38145;&#37117;&#29992;&#30456;&#21516;&#30340;&#30003;&#35831;&#39034;&#24207;&#65306;&#25353;namespace&#30340;&#23618;&#27425;&#36941;&#21382;&#65292;&#22312;&#21516;&#19968;&#23618;&#20013;&#25353;&#23383;&#27597;&#39034;&#24207;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1358932166230" ID="ID_1698674309" MODIFIED="1358932173324" TEXT="replica placement"/>
</node>
</node>
</node>
</map>
