<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1358761487053" ID="2qhaoej8aojq6k1a2p46pe91ss" MODIFIED="1358823671210" TEXT="GFS">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1358761487053" ID="7455u7ltlbl808oslf8cvlga43" MODIFIED="1358763088328" POSITION="right" TEXT="Introduction">
<node CREATED="1358761487053" ID="6lk1lmjbvkj6egufacpq7e9l2q" MODIFIED="1358761487053" TEXT="component failures are common rather than exceptions"/>
<node CREATED="1358761487053" ID="6auohkb7tm9qndj71ktuef6kli" MODIFIED="1358761487053" TEXT="huge files"/>
<node CREATED="1358761487053" ID="0qrgj771psf626vkb8dboe1bi0" MODIFIED="1358761878178" TEXT="most files are mutated by appending rather than overwritting, no random writes."/>
</node>
<node CREATED="1358761487053" ID="4o8ig00i6p2g63c04r3doirrlr" MODIFIED="1358835453196" POSITION="right">
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
<node CREATED="1358761487054" ID="66rn7tn0qgtjksdtkhehqc7f3g" MODIFIED="1358837024334" TEXT="record append: atomically"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1358763595671" ID="ID_1756627843" MODIFIED="1358824031971" TEXT="Single Master">
<node CREATED="1358824000992" ID="ID_1522396954" MODIFIED="1358824006981" TEXT="&#x4ea4;&#x4e92;&#x6b65;&#x9aa4;&#xff1a;">
<node CREATED="1358763758976" ID="ID_394585177" MODIFIED="1358834187926" TEXT="Client req includes filename &amp; chunk index">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1358763800451" ID="ID_1969008194" MODIFIED="1358834190860" TEXT="Master return chunk handle &amp; chunk locations">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1358763822698" ID="ID_588200627" MODIFIED="1358834192836" TEXT="Client cache handle &amp; location as key">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1358764003485" ID="ID_320990754" MODIFIED="1358834195228" TEXT="Client reqs to one replicas,&#x4ece;&#x8fd9;&#x65f6;&#x8d77;&#x8bfb;&#x540c;&#x4e00;&#x4e2a;&#x5757;&#xff0c;client&#x548c;master&#x6ca1;&#x6709;&#x4ea4;&#x4e92;&#xff0c;&#x9664;&#x975e;metadata&#x8fc7;&#x671f;">
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1358824033753" ID="ID_1767849750" MODIFIED="1358834175507">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1358835455028" ID="ID_1754505401" MODIFIED="1358835462714" TEXT="Consistency Model">
<node CREATED="1358835465214" ID="ID_83701019" MODIFIED="1358837187194" TEXT="Guarantees by GFS">
<node CREATED="1358835479689" ID="ID_424876621" MODIFIED="1358837177318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../选区_005.png" />
  </body>
</html>
</richcontent>
<node CREATED="1358835498835" ID="ID_46663934" MODIFIED="1358836355225">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>consistent:</b>&#160;&#160;all clients see same data
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1358835506724" ID="ID_1221810293" MODIFIED="1358836325321">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <b>undefined but consistent</b>: all clients see same data, but may not reflect what any one mutation has written.
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1358837187195" ID="ID_1730080186" MODIFIED="1358837187195" TEXT=""/>
</node>
</node>
</node>
</node>
</map>
