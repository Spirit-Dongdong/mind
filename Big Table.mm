<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1359687811994" ID="ID_1128297246" MODIFIED="1359687817086" TEXT="Big Table">
<node CREATED="1359688052323" ID="ID_1813511163" MODIFIED="1361865601621" POSITION="right" TEXT="Introduction">
<node CREATED="1359688072911" ID="ID_1704187599" MODIFIED="1359688138660">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        wide applicability
      </li>
      <li>
        scalability
      </li>
      <li>
        high performance
      </li>
      <li>
        high avaliablility
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1359688184125" ID="ID_899016897" MODIFIED="1359688225449" TEXT="resembles a DB. Parallel DB and main-memory DB have achieved scalability and high performance"/>
<node CREATED="1359688241356" ID="ID_764601590" MODIFIED="1359688281717" TEXT="Data is indexed using row and column names">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1359688785557" ID="ID_121747557" MODIFIED="1361947207259" POSITION="right" TEXT="Data Model">
<node CREATED="1359688794915" ID="ID_92780811" MODIFIED="1359688821312" TEXT="sparse, distributed, persistent multi-dimensional sorted map">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1359688853407" ID="ID_1184396404" MODIFIED="1359688877940" TEXT="each value in the map is an uninterpreted array of bytes"/>
<node CREATED="1359689329202" ID="ID_711798441" MODIFIED="1359689356068" TEXT="(row:String   column:String    time:int64) -&gt; String">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1359689682126" ID="ID_789090795" MODIFIED="1359698186094">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#f70808"><b>webtable</b></font>
    </p>
    <p>
      <img src="pic/选区_009.png" />
    </p>
  </body>
</html></richcontent>
<node CREATED="1359689725466" ID="ID_349564990" MODIFIED="1361865149166">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#34892;&#65306;URL
    </p>
    <p>
      &#21015;&#65306;
    </p>
    <ul>
      <li>
        contents&#65288;html&#28304;&#20195;&#30721;&#65289;&#65292;&#26377;3&#20010;version&#65288;timestamp&#65289;
      </li>
      <li>
        &#33509;&#24178;&#24341;&#29992;&#35813;url&#30340;anchor&#65292;&#27599;&#20010;anchor&#26377;&#19968;&#20010;version&#65288;timestamp&#65289;
      </li>
      <li>
        &#36825;&#37324;CNN&#30340;&#20027;&#39029;&#34987;&#24341;&#29992;2&#27425;&#65292;&#25152;&#20197;cnn&#36825;&#34892;&#26377;2&#20010;anchor
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361865245449" ID="ID_115450112" MODIFIED="1361865593867">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      rows&#65306;
    </p>
    <ul>
      <li>
        string&#65292;&#26368;&#22823;64kb
      </li>
      <li>
        &#22312;&#21516;&#19968;row&#65288;single row&#65289;&#19979;&#23545;&#25968;&#25454;&#30340;&#35835;&#20889;&#26159;&#21407;&#23376;&#30340;
      </li>
      <li>
        Bigtable&#20197;row&#30340;&#23383;&#27597;&#24207;&#26469;&#32500;&#25252;&#25968;&#25454;&#65292;&#21160;&#24577;&#21010;&#20998;row range&#12290;row range&#34987;&#31216;&#20026;<b>tablet&#65292;&#26159;&#20998;&#24067;&#21644;&#36127;&#36733;&#24179;&#34913;&#30340;&#21333;&#20301;&#12290; </b>
      </li>
      <li>
        &#23458;&#25143;&#31471;&#30340;&#35831;&#27714;&#65288;row keys&#65289;&#22914;&#26524;&#22312;&#36739;&#23567;&#30340;row range&#19979;&#65292;&#20250;&#26377;&#36739;&#22909;&#30340;&#24615;&#33021;&#12290;&#25152;&#20197;&#20250;<b>&#21453;&#36716;</b>URL&#20013;&#30340;hostname&#65288;maps.google.com&#20250;&#23384;&#25918;&#22312;key com.google.maps&#19979;&#65289;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1361865612059" ID="ID_480149319" MODIFIED="1361865910654">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Column Families&#65306;
    </p>
    <ul>
      <li>
        &#26159;&#35775;&#38382;&#25511;&#21046;&#30340;&#21333;&#20301;&#65288;access control&#65289;
      </li>
      <li>
        column key&#30340;&#21629;&#21517;&#26041;&#24335;&#65306;&#160;<b>&#160;family&#65306;qualifier</b>
      </li>
      <li>
        &#19968;&#20123;family&#30340;&#20363;&#23376;&#65306;language&#65292; anchor
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1361865914929" ID="ID_1648558540" MODIFIED="1361866191004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Timestamp&#65306;
    </p>
    <ul>
      <li>
        64&#20301;&#30340;integer&#65292;&#34920;&#31034;&#29256;&#26412;
      </li>
      <li>
        Bigtable&#20013;&#20197;&#24494;&#31186;&#30340;&#24418;&#24335;&#23558;&#20854;&#35270;&#20026;&#8220;real time&#8221;
      </li>
      <li>
        Applications&#33258;&#24049;&#36127;&#36131;&#29983;&#25104;&#21807;&#19968;&#30340;timestamp&#65292;&#19981;&#21516;&#29256;&#26412;&#30340;cell&#20197;timestamp&#38477;&#24207;&#25490;&#21015;&#23384;&#25918;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361866194280" ID="ID_1841709051" MODIFIED="1361866195871" POSITION="right" TEXT="API">
<node CREATED="1361866238984" ID="ID_766870999" MODIFIED="1361866458185">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        creating/deleting tables and column families
      </li>
      <li>
        changing cluster/table/column family/metadata(&#35775;&#38382;&#25511;&#21046;&#20043;&#31867;&#30340;)
      </li>
      <li>
        write/delete values from rows(C++: RowMutation)
      </li>
      <li>
        iterate over multiple column families(C++:Scanner)
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361866467585" ID="ID_674202795" MODIFIED="1361867112523" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Building Blocks
    </p>
    <ul>
      <li>
        &#29992;GFS&#23384;&#20648;&#26085;&#24535;&#21644;&#25968;&#25454;&#25991;&#20214;
      </li>
      <li>
        &#29992;Google SSTable&#25991;&#20214;&#26684;&#24335;&#26469;&#20445;&#23384;Bigtable&#30340;&#25968;&#25454;
      </li>
      <li>
        &#20381;&#36182;&#20110;&#39640;&#21487;&#29992;&#65292;&#25345;&#20037;&#21270;&#20998;&#24067;&#24335;&#38145;&#26381;&#21153;Chubby&#12290;&#24863;&#35273;Chubby&#26377;&#28857;&#20687;zookeeper&#65292;&#37117;&#29992;&#30340;Paxos&#65292;&#20855;&#20307;&#35265;<a href="http://blog.csdn.net/historyasamirror/article/details/3870168" content="text/html; charset=utf-8" http-equiv="content-type">http://blog.csdn.net/historyasamirror/article/details/3870168 </a>
      </li>
    </ul>
    <p>
      &#29992;Chubby&#30340;&#20316;&#29992;&#65306;
    </p>
    <ol>
      <li>
        &#30830;&#20445;&#20219;&#20309;&#26102;&#20505;&#26368;&#22810;&#26377;&#19968;&#20010;active&#30340;master
      </li>
      <li>
        &#23384;&#20648;Bigtable&#25968;&#25454;&#30340;&#21551;&#21160;&#20301;&#32622;&#65288;bootstrap location&#65289;
      </li>
      <li>
        &#23547;&#25214;&#65288;discover&#65289;tablet server&#65292;&#22238;&#25910;&#65288;finalize&#65289;&#27515;&#25481;&#30340;tablet server
      </li>
      <li>
        &#23384;&#20648;Bigtable&#30340;&#27169;&#24335;&#20449;&#24687;&#65288;&#27599;&#20010;table&#30340;column family&#20449;&#24687;&#65289;&#21644;&#35775;&#38382;&#25511;&#21046;&#20449;&#24687;
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
<node CREATED="1361867126695" ID="ID_1837000711" MODIFIED="1361867132872" POSITION="right" TEXT="Implementation">
<node CREATED="1361867147385" ID="ID_1064872446" MODIFIED="1361867357204">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      3&#20010;&#20027;&#35201;&#30340;&#32452;&#20214;
    </p>
    <ul>
      <li>
        a libraray that linked into every client
      </li>
      <li>
        one master server &#65306;&#36127;&#36131;&#25226;tablet&#20998;&#21457;&#21040;tablet server&#19978;&#65292;&#31649;&#29702;tablet&#160;server&#65288;&#26032;&#22686;&#65292;&#36807;&#26399;&#65292;&#36127;&#36733;&#24179;&#34913;&#65292;&#22403;&#22334;&#22238;&#25910;&#31561;&#65292;table&#27169;&#24335;&#20462;&#25913;&#21644;column family&#30340;&#21019;&#24314;&#37117;&#24402;&#23427;&#31649;&#65289;
      </li>
      <li>
        many tablet servers : &#21487;&#20197;&#21160;&#24577;&#20174;&#19968;&#20010;cluster&#19978;&#28155;&#21152;/&#31227;&#38500;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1361867370227" ID="ID_1336707219" MODIFIED="1361867445597">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tablet server&#65306;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#31649;&#29702;&#19968;&#31995;&#21015;tablet&#65292;&#21253;&#25324;&#36825;&#20123;tablet&#30340;&#35835;&#20889;&#35831;&#27714;&#12290;&#22914;&#26524;tablet&#22826;&#22823;&#20102;&#36824;&#35201;split
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1361868416881" ID="ID_687779397" MODIFIED="1361947194252">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="pic/选区_010.png" />
  </body>
</html></richcontent>
<node CREATED="1361868452473" ID="ID_1934847262" MODIFIED="1361868480193" TEXT="root tablet&#x6c38;&#x8fdc;&#x4e0d;&#x4f1a;split"/>
<node CREATED="1361868480782" ID="ID_1698891539" MODIFIED="1361868549294" TEXT="METADATA&#x7684;row key&#x4ee5;tablet&#x7684;id&#x548c;end row&#x7f16;&#x7801;&#x751f;&#x6210;"/>
<node CREATED="1361868586571" ID="ID_840798495" MODIFIED="1361868618628" TEXT="client&#x7f13;&#x5b58;tablet&#x7684;&#x4f4d;&#x7f6e;&#xff0c;&#x4e00;&#x65e6;&#x6709;&#x53d8;&#x5316;&#x5c31;&#x9012;&#x5f52;&#x91cd;&#x65b0;&#x83b7;&#x53d6;&#x4f4d;&#x7f6e;"/>
</node>
<node CREATED="1361868701453" FOLDED="true" ID="ID_1695454556" MODIFIED="1361872974504" TEXT="Tablet assignment">
<node CREATED="1361868709424" ID="ID_989930928" MODIFIED="1361868812042" TEXT="master&#x5411;tablet server&#x53d1;load&#x8bf7;&#x6c42;&#x6765;assign tablet"/>
<node CREATED="1361868812814" ID="ID_818329894" MODIFIED="1361869509689">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        tablet server&#21551;&#21160;&#21518;&#65292;&#20250;&#33258;&#24049;&#22312;&#25351;&#23450;&#30340;Chubby&#30446;&#24405;&#19979;&#21019;&#24314;&#19968;&#20010;&#21807;&#19968;&#21629;&#21517;&#30340;&#38145;
      </li>
      <li>
        master&#23601;&#36890;&#36807;&#30417;&#25511;&#36825;&#20010;&#30446;&#24405;&#26469;&#23547;&#25214;tablet servers
      </li>
      <li>
        tablet server&#22914;&#26524;&#20002;&#22833;&#20102;&#36825;&#20010;&#38145;&#65292;&#23601;&#26080;&#27861;&#25552;&#20379;&#26381;&#21153;&#20102;
      </li>
      <li>
        &#22914;&#26524;&#30001;&#20110;Chubby&#30340;&#32593;&#32476;&#21407;&#22240;&#20351;tablet server&#20002;&#20102;Chubby&#30340;session&#65292;server&#20250;&#23581;&#35797;&#20197;&#30456;&#21516;&#25991;&#20214;&#21517;&#37325;&#26032;&#33719;&#24471;&#38145;&#12290;&#21482;&#35201;&#38145;&#25991;&#20214;&#36824;&#22312;&#65292;&#36825;&#27493;&#23601;&#21487;&#20197;&#25104;&#21151;&#12290;&#22914;&#26524;&#38145;&#25991;&#20214;&#19981;&#22312;&#20102;&#65292;server&#23601;&#21482;&#33021;&#33258;&#35009;&#20102;&#12290;&#12290;&#12290;
      </li>
      <li>
        server&#32456;&#27490;&#26102;&#65288;&#26080;&#35770;&#20160;&#20040;&#21407;&#22240;&#65289;&#65292;&#37117;&#20250;&#35797;&#22270;&#37322;&#25918;&#38145;&#65292;&#36825;&#26679;master&#21487;&#20197;&#23613;&#24555;&#25226;&#36825;&#20010;server&#19978;&#30340;tablets assign&#20986;&#21435;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1361869514329" ID="ID_35591473" MODIFIED="1361869909109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      master&#30340;&#36131;&#20219;&#23601;&#26159;&#26816;&#27979;tablet server&#26159;&#21542;&#20572;&#27490;&#26381;&#21153;&#65292;&#24182;&#19988;&#23613;&#24555;&#25226;&#20572;&#27490;&#26381;&#21153;&#30340;server&#19978;&#30340;tablets&#37325;&#26032;&#20998;&#20986;&#21435;&#12290;
    </p>
    <ul>
      <li>
        &#26816;&#27979;&#26159;&#21542;&#20572;&#27490;&#26381;&#21153;&#65306;&#21608;&#26399;&#24615;&#35810;&#38382;tablet server&#23427;&#30340;<b>&#38145;&#30340;&#29366;&#24577;</b>&#12290;&#22914;&#26524;server&#20002;&#22833;&#38145;&#25110;&#36830;&#19981;&#19978;server&#65292;master&#20250;<b>&#33258;&#24049;&#23581;&#35797;&#33021;&#21542;&#33719;&#24471;&#38145;</b>&#65288;&#38145;&#26159;&#25351;&#23450;&#30340;&#21807;&#19968;&#25991;&#20214;&#21517;&#22043;&#65374;&#65289;&#12290;
      </li>
      <li>
        &#22914;&#26524;&#33021;&#33719;&#24471;&#65292;&#35828;&#26126;Chubby&#36824;&#27963;&#30528;&#65292;server&#21487;&#33021;&#27515;&#20102;&#25110;&#32773;&#36830;&#19981;&#19978;Chubby&#20102;&#65292;&#36825;&#26679;master&#23601;&#25226;&#36825;&#20010;<b>&#38145;&#25991;&#20214;&#21024;&#25481;&#65292;&#28982;&#21518;&#25226;&#25152;&#26377;&#36825;&#20010;server&#19978;&#30340;tablet&#37117;&#25918;&#21040;unassigned&#38598;&#21512;&#19979;</b>&#12290;
      </li>
      <li>
        &#22914;&#26524;master&#19978;&#30340;Chubby session&#36807;&#26399;&#65292;master&#20250;<b>&#33258;&#35009;</b>&#20197;&#20445;&#35777;Bigtable cluster&#30340;&#32593;&#32476;&#31283;&#23450;&#24615;&#12290;&#65288;&#26681;&#25454;Paxos&#65292;master&#25346;&#20102;&#20250;&#37325;&#26032;&#36873;&#19968;&#20010;master&#65289;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
<node CREATED="1361870342786" ID="ID_662529177" MODIFIED="1361870617239">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      master&#21551;&#21160;&#21518;&#30340;&#25191;&#34892;&#27493;&#39588;&#65306;
    </p>
    <ul>
      <li>
        &#22312;Chubby&#20013;&#33719;&#21462;&#21807;&#19968;&#30340;master&#38145;&#65292;&#20174;&#32780;&#38459;&#27490;&#24182;&#21457;&#30340;master&#23454;&#20363;
      </li>
      <li>
        &#25195;&#25551;Chubby&#30446;&#24405;&#65292;&#25214;&#21040;&#27963;&#30528;&#30340;servers
      </li>
      <li>
        &#21644;&#36825;&#20123;&#25110;&#32773;&#30340;server&#36890;&#20449;&#65292;&#33719;&#30693;&#27599;&#21488;server&#19978;&#37117;&#26377;&#21738;&#20123;tablets
      </li>
      <li>
        &#25195;&#25551;METADATA table&#65292;&#21482;&#35201;&#21457;&#29616;&#27809;assign&#30340;tablet&#65292;&#23601;&#21152;&#21040;unassigned&#30340;&#38598;&#21512;&#20013;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361872975521" ID="ID_718121244" MODIFIED="1361872979666" TEXT="Refinements">
<node CREATED="1361872985639" ID="ID_579803064" MODIFIED="1361872990412" TEXT="Locality group">
<node CREATED="1361873009905" ID="ID_42272659" MODIFIED="1361873189205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Client group multiple column families together into a<b>&#160;locality group </b>
    </p>
    <p>
      &#21487;&#20197;&#25226;&#19968;&#20123;&#24120;&#29992;&#30340;&#21442;&#25968;&#22768;&#26126;&#20026;&#25918;&#21040;&#20869;&#23384;&#20013;&#30340;group
    </p>
    <p>
      eg
    </p>
    <ul>
      <li>
        page metadata can be one locality group
      </li>
      <li>
        contents of page can be another group
      </li>
    </ul>
    <p>
      &#36825;&#26679;&#21482;&#24819;&#35835;metadata&#30340;application&#26080;&#38656;&#35835;&#21462;&#25972;&#20010;&#39029;&#38754;&#20869;&#23481;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361873192515" ID="ID_201870144" MODIFIED="1361873196859" TEXT="Compression"/>
<node CREATED="1361873275887" FOLDED="true" ID="ID_512291350" MODIFIED="1361873495788" TEXT="Caching for read performance">
<node CREATED="1361873301665" ID="ID_939421041" MODIFIED="1361873493969">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20004;&#32423;cache
    </p>
    <ul>
      <li>
        scan cache&#65306;&#39640;&#23618;cache&#12290;cache &#20174;SSTable&#36820;&#22238;&#30340;tablet server code&#30340;k-v pair&#12290;&#23545;&#20110;application<b>&#37325;&#22797;&#35835;&#30456;&#21516;&#25968;&#25454;</b>&#24456;&#26377;&#29992;&#65292;
      </li>
      <li>
        block cache&#65306;&#20302;&#23618;cache&#12290;cache&#20174;GFS&#35835;&#21040;&#30340;SSTable block&#12290;&#23545;application&#35835;<b>&#25509;&#36817;&#26368;&#36817;&#35835;&#30340;&#25968;&#25454;&#26102;</b>&#24456;&#26377;&#29992;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361873496919" ID="ID_349866229" MODIFIED="1361873503726" TEXT="Bloom filters">
<node CREATED="1361873521539" ID="ID_1744606551" MODIFIED="1361873591170" TEXT="&#x7528;&#x6765;&#x8be2;&#x95ee;&#x5bf9;&#x4e8e;&#x6307;&#x5b9a;&#x7684;row/column pair&#xff0c;SSTable&#x662f;&#x5426;&#x5305;&#x542b;&#x6570;&#x636e;&#x3002;&#x4ece;&#x800c;&#x51cf;&#x5c11;&#x8bfb;&#x64cd;&#x4f5c;&#x65f6;&#x8bbf;&#x95ee;&#x78c1;&#x76d8;&#x7684;&#x6b21;&#x6570;&#x3002;"/>
</node>
<node CREATED="1361874133219" ID="ID_1759148185" MODIFIED="1361874136734" TEXT="Commit-log">
<node CREATED="1361874138497" ID="ID_1043130702" MODIFIED="1361874154665" TEXT="&#x6bcf;&#x4e2a;tablet server&#x4e0a;&#x4e00;&#x4e2a;log"/>
<node CREATED="1361874173512" ID="ID_1929805076" MODIFIED="1361875410542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        &#25226;commit log&#25353;&#29031;<b>&lt;table, row name, log sequence number&gt;</b>&#25490;&#24207;
      </li>
      <li>
        &#25490;&#24207;&#21518;&#23545;&#20110;&#19968;&#20010;table&#30340;&#20462;&#25913;&#19968;&#23450;&#26159;<b>&#36830;&#32493;</b>&#30340;&#19968;&#27573;--&#12299;&#35835;&#36215;&#26469;&#24456;&#24555;
      </li>
      <li>
        &#20026;&#20102;&#24182;&#34892;&#25490;&#24207;&#65292;&#25226;log&#25991;&#20214;&#21010;&#20998;&#20026;64mb&#30340;segment&#65292;&#24182;&#34892;&#22312;&#19981;&#21516;&#30340;tablet server&#19978;&#36827;&#34892;&#36825;&#20123;segment&#30340;&#25490;&#24207;
      </li>
      <li>
        &#27599;&#20010;server&#19978;&#26377;2&#20010;&#20889;log&#30340;&#32447;&#31243;&#65292;&#36825;2&#20010;&#32447;&#31243;&#21508;&#20889;&#21508;&#30340;&#65292;&#21482;&#26377;&#19968;&#20010;&#32447;&#31243;&#26159;&#30495;&#27491;&#29992;&#30340;(actively in use at a time)&#65288;&#31867;&#20284;<b>&#28909;&#20999;&#25442;</b>&#65289;
      </li>
    </ul>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1361875414256" ID="ID_994641522" MODIFIED="1361875427567" TEXT="tablet recovery">
<node CREATED="1361875667215" ID="ID_493989309" MODIFIED="1361876191560">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        tablet&#22312;&#20256;&#36755;&#21069;&#20808;&#21387;&#32553;
      </li>
      <li>
        server&#20572;&#27490;&#23545;&#36825;&#20010;tablet&#30340;&#26381;&#21153;&#65288;&#22312;&#36825;&#27493;&#21069;server&#20063;&#20250;&#36827;&#34892;&#19968;&#20010;&#21387;&#32553;&#65289;
      </li>
      <li>
        &#20004;&#27425;&#21387;&#32553;&#20043;&#21518;&#65292;tablet&#23601;&#21487;&#20197;&#34987;&#21478;&#19968;&#20010;server load&#65292;&#26080;&#38656;&#20877;&#21435;&#33719;&#21462;&#20219;&#20309;recovery log
      </li>
    </ul>
    <p>
      &#20004;&#27425;&#21387;&#32553;&#37117;&#26159;&#23545;server commit log&#36827;&#34892;&#30340;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
</map>
