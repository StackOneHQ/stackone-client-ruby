# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module StackOne
  module Models
    module Shared
    
      # WorkEligibilitySchemasDocumentValue - The file format of the file, expressed as a file extension
      class WorkEligibilitySchemasDocumentValue < T::Enum
        enums do
          UNMAPPED_VALUE = new('unmapped_value')
          EZ = new('ez')
          AW = new('aw')
          ATOM = new('atom')
          ATOMCAT = new('atomcat')
          ATOMDELETED = new('atomdeleted')
          ATOMSVC = new('atomsvc')
          DWD = new('dwd')
          HELD = new('held')
          RSAT = new('rsat')
          BDOC = new('bdoc')
          XCS = new('xcs')
          CCXML = new('ccxml')
          CDFX = new('cdfx')
          CDMIA = new('cdmia')
          CDMIC = new('cdmic')
          CDMID = new('cdmid')
          CDMIO = new('cdmio')
          CDMIQ = new('cdmiq')
          CU = new('cu')
          MPD = new('mpd')
          DAVMOUNT = new('davmount')
          DBK = new('dbk')
          DSSC = new('dssc')
          XDSSC = new('xdssc')
          ES = new('es')
          ECMA = new('ecma')
          EMMA = new('emma')
          EMOTIONML = new('emotionml')
          EPUB = new('epub')
          EXI = new('exi')
          EXP = new('exp')
          FDT = new('fdt')
          PFR = new('pfr')
          GEOJSON = new('geojson')
          GML = new('gml')
          GPX = new('gpx')
          GXF = new('gxf')
          GZ = new('gz')
          HJSON = new('hjson')
          STK = new('stk')
          INK = new('ink')
          INKML = new('inkml')
          IPFIX = new('ipfix')
          ITS = new('its')
          JAR = new('jar')
          WAR = new('war')
          EAR = new('ear')
          SER = new('ser')
          CLASS = new('class')
          JS = new('js')
          MJS = new('mjs')
          JSON = new('json')
          MAP = new('map')
          JSON5 = new('json5')
          JSONML = new('jsonml')
          JSONLD = new('jsonld')
          LGR = new('lgr')
          LOSTXML = new('lostxml')
          HQX = new('hqx')
          CPT = new('cpt')
          MADS = new('mads')
          WEBMANIFEST = new('webmanifest')
          MRC = new('mrc')
          MRCX = new('mrcx')
          MA = new('ma')
          NB = new('nb')
          MB = new('mb')
          MATHML = new('mathml')
          MBOX = new('mbox')
          MSCML = new('mscml')
          METALINK = new('metalink')
          META4 = new('meta4')
          METS = new('mets')
          MAEI = new('maei')
          MUSD = new('musd')
          MODS = new('mods')
          M21 = new('m21')
          MP21 = new('mp21')
          MP4S = new('mp4s')
          M4P = new('m4p')
          DOC = new('doc')
          DOT = new('dot')
          MXF = new('mxf')
          NQ = new('nq')
          NT = new('nt')
          CJS = new('cjs')
          BIN = new('bin')
          DMS = new('dms')
          LRF = new('lrf')
          MAR = new('mar')
          SO = new('so')
          DIST = new('dist')
          DISTZ = new('distz')
          PKG = new('pkg')
          BPK = new('bpk')
          DUMP = new('dump')
          ELC = new('elc')
          DEPLOY = new('deploy')
          EXE = new('exe')
          DLL = new('dll')
          DEB = new('deb')
          DMG = new('dmg')
          ISO = new('iso')
          IMG = new('img')
          MSI = new('msi')
          MSP = new('msp')
          MSM = new('msm')
          BUFFER = new('buffer')
          ODA = new('oda')
          OPF = new('opf')
          OGX = new('ogx')
          OMDOC = new('omdoc')
          ONETOC = new('onetoc')
          ONETOC2 = new('onetoc2')
          ONETMP = new('onetmp')
          ONEPKG = new('onepkg')
          OXPS = new('oxps')
          RELO = new('relo')
          XER = new('xer')
          PDF = new('pdf')
          PGP = new('pgp')
          ASC = new('asc')
          SIG = new('sig')
          PRF = new('prf')
          P10 = new('p10')
          P7M = new('p7m')
          P7C = new('p7c')
          P7S = new('p7s')
          P8 = new('p8')
          AC = new('ac')
          CER = new('cer')
          CRL = new('crl')
          PKIPATH = new('pkipath')
          PKI = new('pki')
          PLS = new('pls')
          AI = new('ai')
          EPS = new('eps')
          PS = new('ps')
          PROVX = new('provx')
          PSKCXML = new('pskcxml')
          RAML = new('raml')
          RDF = new('rdf')
          OWL = new('owl')
          RIF = new('rif')
          RNC = new('rnc')
          RL = new('rl')
          RLD = new('rld')
          RS = new('rs')
          RAPD = new('rapd')
          SLS = new('sls')
          RUSD = new('rusd')
          GBR = new('gbr')
          MFT = new('mft')
          ROA = new('roa')
          RSD = new('rsd')
          RSS = new('rss')
          RTF = new('rtf')
          SBML = new('sbml')
          SCQ = new('scq')
          SCS = new('scs')
          SPQ = new('spq')
          SPP = new('spp')
          SDP = new('sdp')
          SENMLX = new('senmlx')
          SENSMLX = new('sensmlx')
          SETPAY = new('setpay')
          SETREG = new('setreg')
          SHF = new('shf')
          SIV = new('siv')
          SIEVE = new('sieve')
          SMI = new('smi')
          SMIL = new('smil')
          RQ = new('rq')
          SRX = new('srx')
          GRAM = new('gram')
          GRXML = new('grxml')
          SRU = new('sru')
          SSDL = new('ssdl')
          SSML = new('ssml')
          SWIDTAG = new('swidtag')
          TEI = new('tei')
          TEICORPUS = new('teicorpus')
          TFI = new('tfi')
          TSD = new('tsd')
          TOML = new('toml')
          TRIG = new('trig')
          TTML = new('ttml')
          UBJ = new('ubj')
          RSHEET = new('rsheet')
          TD = new('td')
          VXML = new('vxml')
          WASM = new('wasm')
          WGT = new('wgt')
          HLP = new('hlp')
          WSDL = new('wsdl')
          WSPOLICY = new('wspolicy')
          XAML = new('xaml')
          XAV = new('xav')
          XCA = new('xca')
          XDF = new('xdf')
          XEL = new('xel')
          XNS = new('xns')
          XENC = new('xenc')
          XHTML = new('xhtml')
          XHT = new('xht')
          XLF = new('xlf')
          XML = new('xml')
          XSL = new('xsl')
          XSD = new('xsd')
          RNG = new('rng')
          DTD = new('dtd')
          XOP = new('xop')
          XPL = new('xpl')
          WILDCARD_XSL = new('*xsl')
          XSLT = new('xslt')
          XSPF = new('xspf')
          MXML = new('mxml')
          XHVML = new('xhvml')
          XVML = new('xvml')
          XVM = new('xvm')
          YANG = new('yang')
          YIN = new('yin')
          ZIP = new('zip')
          WILDCARD_3GPP = new('*3gpp')
          ADP = new('adp')
          AMR = new('amr')
          AU = new('au')
          SND = new('snd')
          MID = new('mid')
          MIDI = new('midi')
          KAR = new('kar')
          RMI = new('rmi')
          MXMF = new('mxmf')
          WILDCARD_MP3 = new('*mp3')
          M4A = new('m4a')
          MP4A = new('mp4a')
          MPGA = new('mpga')
          MP2 = new('mp2')
          MP2A = new('mp2a')
          MP3 = new('mp3')
          M2A = new('m2a')
          M3A = new('m3a')
          OGA = new('oga')
          OGG = new('ogg')
          SPX = new('spx')
          OPUS = new('opus')
          S3M = new('s3m')
          SIL = new('sil')
          WAV = new('wav')
          WILDCARD_WAV = new('*wav')
          WEBA = new('weba')
          XM = new('xm')
          TTC = new('ttc')
          OTF = new('otf')
          TTF = new('ttf')
          WOFF = new('woff')
          WOFF2 = new('woff2')
          EXR = new('exr')
          APNG = new('apng')
          AVIF = new('avif')
          BMP = new('bmp')
          CGM = new('cgm')
          DRLE = new('drle')
          EMF = new('emf')
          FITS = new('fits')
          G3 = new('g3')
          GIF = new('gif')
          HEIC = new('heic')
          HEICS = new('heics')
          HEIF = new('heif')
          HEIFS = new('heifs')
          HEJ2 = new('hej2')
          HSJ2 = new('hsj2')
          IEF = new('ief')
          JLS = new('jls')
          JP2 = new('jp2')
          JPG2 = new('jpg2')
          JPEG = new('jpeg')
          JPG = new('jpg')
          JPE = new('jpe')
          JPH = new('jph')
          JHC = new('jhc')
          JPM = new('jpm')
          JPX = new('jpx')
          JPF = new('jpf')
          JXR = new('jxr')
          JXRA = new('jxra')
          JXRS = new('jxrs')
          JXS = new('jxs')
          JXSC = new('jxsc')
          JXSI = new('jxsi')
          JXSS = new('jxss')
          KTX = new('ktx')
          KTX2 = new('ktx2')
          PNG = new('png')
          SGI = new('sgi')
          SVG = new('svg')
          SVGZ = new('svgz')
          T38 = new('t38')
          TIF = new('tif')
          TIFF = new('tiff')
          TFX = new('tfx')
          WEBP = new('webp')
          WMF = new('wmf')
          DISPOSITION_NOTIFICATION = new('disposition-notification')
          U8MSG = new('u8msg')
          U8DSN = new('u8dsn')
          U8MDN = new('u8mdn')
          U8HDR = new('u8hdr')
          EML = new('eml')
          MIME = new('mime')
          THREEMF = new('3mf')
          GLTF = new('gltf')
          GLB = new('glb')
          IGS = new('igs')
          IGES = new('iges')
          MSH = new('msh')
          MESH = new('mesh')
          SILO = new('silo')
          MTL = new('mtl')
          OBJ = new('obj')
          STPX = new('stpx')
          STPZ = new('stpz')
          STPXZ = new('stpxz')
          STL = new('stl')
          WRL = new('wrl')
          VRML = new('vrml')
          WILDCARD_X3DB = new('*x3db')
          X3DBZ = new('x3dbz')
          X3DB = new('x3db')
          WILDCARD_X3DV = new('*x3dv')
          X3DVZ = new('x3dvz')
          X3D = new('x3d')
          X3DZ = new('x3dz')
          X3DV = new('x3dv')
          APPCACHE = new('appcache')
          MANIFEST = new('manifest')
          ICS = new('ics')
          IFB = new('ifb')
          COFFEE = new('coffee')
          LITCOFFEE = new('litcoffee')
          CSS = new('css')
          CSV = new('csv')
          HTML = new('html')
          HTM = new('htm')
          SHTML = new('shtml')
          JADE = new('jade')
          JSX = new('jsx')
          LESS = new('less')
          MARKDOWN = new('markdown')
          MD = new('md')
          MML = new('mml')
          MDX = new('mdx')
          N3 = new('n3')
          TXT = new('txt')
          TEXT = new('text')
          CONF = new('conf')
          DEF = new('def')
          LIST = new('list')
          LOG = new('log')
          IN = new('in')
          INI = new('ini')
          RTX = new('rtx')
          WILDCARD_RTF = new('*rtf')
          SGML = new('sgml')
          SGM = new('sgm')
          SHEX = new('shex')
          SLIM = new('slim')
          SLM = new('slm')
          SPDX = new('spdx')
          STYLUS = new('stylus')
          STYL = new('styl')
          TSV = new('tsv')
          T = new('t')
          TR = new('tr')
          ROFF = new('roff')
          MAN = new('man')
          ME = new('me')
          MS = new('ms')
          TTL = new('ttl')
          URI = new('uri')
          URIS = new('uris')
          URLS = new('urls')
          VCARD = new('vcard')
          VTT = new('vtt')
          WILDCARD_XML = new('*xml')
          YAML = new('yaml')
          YML = new('yml')
          THREEGP = new('3gp')
          THREEGPP = new('3gpp')
          THREEG2 = new('3g2')
          H261 = new('h261')
          H263 = new('h263')
          H264 = new('h264')
          M4S = new('m4s')
          JPGV = new('jpgv')
          WILDCARD_JPM = new('*jpm')
          JPGM = new('jpgm')
          MJ2 = new('mj2')
          MJP2 = new('mjp2')
          TS = new('ts')
          MP4 = new('mp4')
          MP4V = new('mp4v')
          MPG4 = new('mpg4')
          MPEG = new('mpeg')
          MPG = new('mpg')
          MPE = new('mpe')
          M1V = new('m1v')
          M2V = new('m2v')
          OGV = new('ogv')
          QT = new('qt')
          MOV = new('mov')
          WEBM = new('webm')
          CWW = new('cww')
          ONEKM = new('1km')
          PLB = new('plb')
          PSB = new('psb')
          PVB = new('pvb')
          TCAP = new('tcap')
          PWN = new('pwn')
          ASO = new('aso')
          IMP = new('imp')
          ACU = new('acu')
          ATC = new('atc')
          ACUTC = new('acutc')
          AIR = new('air')
          FCDT = new('fcdt')
          FXP = new('fxp')
          FXPL = new('fxpl')
          XDP = new('xdp')
          XFDF = new('xfdf')
          AHEAD = new('ahead')
          AZF = new('azf')
          AZS = new('azs')
          AZW = new('azw')
          ACC = new('acc')
          AMI = new('ami')
          APK = new('apk')
          CII = new('cii')
          FTI = new('fti')
          ATX = new('atx')
          MPKG = new('mpkg')
          KEY = new('key')
          M3U8 = new('m3u8')
          NUMBERS = new('numbers')
          PAGES = new('pages')
          PKPASS = new('pkpass')
          SWI = new('swi')
          IOTA = new('iota')
          AEP = new('aep')
          BMML = new('bmml')
          MPM = new('mpm')
          BMI = new('bmi')
          REP = new('rep')
          CDXML = new('cdxml')
          MMD = new('mmd')
          CDY = new('cdy')
          CSL = new('csl')
          CLA = new('cla')
          RP9 = new('rp9')
          C4G = new('c4g')
          C4D = new('c4d')
          C4F = new('c4f')
          C4P = new('c4p')
          C4U = new('c4u')
          C11AMC = new('c11amc')
          C11AMZ = new('c11amz')
          CSP = new('csp')
          CDBCMSG = new('cdbcmsg')
          CMC = new('cmc')
          CLKX = new('clkx')
          CLKK = new('clkk')
          CLKP = new('clkp')
          CLKT = new('clkt')
          CLKW = new('clkw')
          WBS = new('wbs')
          PML = new('pml')
          PPD = new('ppd')
          CAR = new('car')
          PCURL = new('pcurl')
          DART = new('dart')
          RDZ = new('rdz')
          DBF = new('dbf')
          UVF = new('uvf')
          UVVF = new('uvvf')
          UVD = new('uvd')
          UVVD = new('uvvd')
          UVT = new('uvt')
          UVVT = new('uvvt')
          UVX = new('uvx')
          UVVX = new('uvvx')
          UVZ = new('uvz')
          UVVZ = new('uvvz')
          FE_LAUNCH = new('fe_launch')
          DNA = new('dna')
          MLP = new('mlp')
          MLE = new('mle')
          DPG = new('dpg')
          DFAC = new('dfac')
          KPXX = new('kpxx')
          AIT = new('ait')
          SVC = new('svc')
          GEO = new('geo')
          MAG = new('mag')
          NML = new('nml')
          ESF = new('esf')
          MSF = new('msf')
          QAM = new('qam')
          SLT = new('slt')
          SSF = new('ssf')
          ES3 = new('es3')
          ET3 = new('et3')
          EZ2 = new('ez2')
          EZ3 = new('ez3')
          FDF = new('fdf')
          MSEED = new('mseed')
          SEED = new('seed')
          DATALESS = new('dataless')
          GPH = new('gph')
          FTC = new('ftc')
          FM = new('fm')
          FRAME = new('frame')
          MAKER = new('maker')
          BOOK = new('book')
          FNC = new('fnc')
          LTF = new('ltf')
          FSC = new('fsc')
          OAS = new('oas')
          OA2 = new('oa2')
          OA3 = new('oa3')
          FG5 = new('fg5')
          BH2 = new('bh2')
          DDD = new('ddd')
          XDW = new('xdw')
          XBD = new('xbd')
          FZS = new('fzs')
          TXD = new('txd')
          GGB = new('ggb')
          GGT = new('ggt')
          GEX = new('gex')
          GRE = new('gre')
          GXT = new('gxt')
          G2W = new('g2w')
          G3W = new('g3w')
          GMX = new('gmx')
          GDOC = new('gdoc')
          GSLIDES = new('gslides')
          GSHEET = new('gsheet')
          KML = new('kml')
          KMZ = new('kmz')
          GQF = new('gqf')
          GQS = new('gqs')
          GAC = new('gac')
          GHF = new('ghf')
          GIM = new('gim')
          GRV = new('grv')
          GTM = new('gtm')
          TPL = new('tpl')
          VCG = new('vcg')
          HAL = new('hal')
          ZMM = new('zmm')
          HBCI = new('hbci')
          LES = new('les')
          HPGL = new('hpgl')
          HPID = new('hpid')
          HPS = new('hps')
          JLT = new('jlt')
          PCL = new('pcl')
          PCLXL = new('pclxl')
          SFD_HDSTX = new('sfd-hdstx')
          MPY = new('mpy')
          AFP = new('afp')
          LISTAFP = new('listafp')
          LIST3820 = new('list3820')
          IRM = new('irm')
          SC = new('sc')
          ICC = new('icc')
          ICM = new('icm')
          IGL = new('igl')
          IVP = new('ivp')
          IVU = new('ivu')
          IGM = new('igm')
          XPW = new('xpw')
          XPX = new('xpx')
          I2G = new('i2g')
          QBO = new('qbo')
          QFX = new('qfx')
          RCPROFILE = new('rcprofile')
          IRP = new('irp')
          XPR = new('xpr')
          FCS = new('fcs')
          JAM = new('jam')
          RMS = new('rms')
          JISP = new('jisp')
          JODA = new('joda')
          KTZ = new('ktz')
          KTR = new('ktr')
          KARBON = new('karbon')
          CHRT = new('chrt')
          KFO = new('kfo')
          FLW = new('flw')
          KON = new('kon')
          KPR = new('kpr')
          KPT = new('kpt')
          KSP = new('ksp')
          KWD = new('kwd')
          KWT = new('kwt')
          HTKE = new('htke')
          KIA = new('kia')
          KNE = new('kne')
          KNP = new('knp')
          SKP = new('skp')
          SKD = new('skd')
          SKT = new('skt')
          SKM = new('skm')
          SSE = new('sse')
          LASXML = new('lasxml')
          LBD = new('lbd')
          LBE = new('lbe')
          APR = new('apr')
          PRE = new('pre')
          NSF = new('nsf')
          ORG = new('org')
          SCM = new('scm')
          LWP = new('lwp')
          PORTPKG = new('portpkg')
          MVT = new('mvt')
          MCD = new('mcd')
          MC1 = new('mc1')
          CDKEY = new('cdkey')
          MWF = new('mwf')
          MFM = new('mfm')
          FLO = new('flo')
          IGX = new('igx')
          MIF = new('mif')
          DAF = new('daf')
          DIS = new('dis')
          MBK = new('mbk')
          MQY = new('mqy')
          MSL = new('msl')
          PLC = new('plc')
          TXF = new('txf')
          MPN = new('mpn')
          MPC = new('mpc')
          XUL = new('xul')
          CIL = new('cil')
          CAB = new('cab')
          XLS = new('xls')
          XLM = new('xlm')
          XLA = new('xla')
          XLC = new('xlc')
          XLT = new('xlt')
          XLW = new('xlw')
          XLAM = new('xlam')
          XLSB = new('xlsb')
          XLSM = new('xlsm')
          XLTM = new('xltm')
          EOT = new('eot')
          CHM = new('chm')
          IMS = new('ims')
          LRM = new('lrm')
          THMX = new('thmx')
          MSG = new('msg')
          CAT = new('cat')
          WILDCARD_STL = new('*stl')
          PPT = new('ppt')
          PPS = new('pps')
          POT = new('pot')
          PPAM = new('ppam')
          PPTM = new('pptm')
          SLDM = new('sldm')
          PPSM = new('ppsm')
          POTM = new('potm')
          MPP = new('mpp')
          MPT = new('mpt')
          DOCM = new('docm')
          DOTM = new('dotm')
          WPS = new('wps')
          WKS = new('wks')
          WCM = new('wcm')
          WDB = new('wdb')
          WPL = new('wpl')
          XPS = new('xps')
          MSEQ = new('mseq')
          MUS = new('mus')
          MSTY = new('msty')
          TAGLET = new('taglet')
          NLU = new('nlu')
          NTF = new('ntf')
          NITF = new('nitf')
          NND = new('nnd')
          NNS = new('nns')
          NNW = new('nnw')
          WILDCARD_AC = new('*ac')
          NGDAT = new('ngdat')
          N_GAGE = new('n-gage')
          RPST = new('rpst')
          RPSS = new('rpss')
          EDM = new('edm')
          EDX = new('edx')
          EXT = new('ext')
          ODC = new('odc')
          OTC = new('otc')
          ODB = new('odb')
          ODF = new('odf')
          ODFT = new('odft')
          ODG = new('odg')
          OTG = new('otg')
          ODI = new('odi')
          OTI = new('oti')
          ODP = new('odp')
          OTP = new('otp')
          ODS = new('ods')
          OTS = new('ots')
          ODT = new('odt')
          ODM = new('odm')
          OTT = new('ott')
          OTH = new('oth')
          XO = new('xo')
          DD2 = new('dd2')
          OBGX = new('obgx')
          OXT = new('oxt')
          OSM = new('osm')
          PPTX = new('pptx')
          SLDX = new('sldx')
          PPSX = new('ppsx')
          POTX = new('potx')
          XLSX = new('xlsx')
          XLTX = new('xltx')
          DOCX = new('docx')
          DOTX = new('dotx')
          MGP = new('mgp')
          DP = new('dp')
          ESA = new('esa')
          PDB = new('pdb')
          PQA = new('pqa')
          OPRC = new('oprc')
          PAW = new('paw')
          STR = new('str')
          EI6 = new('ei6')
          EFIF = new('efif')
          WG = new('wg')
          PLF = new('plf')
          PBD = new('pbd')
          BOX = new('box')
          MGZ = new('mgz')
          QPS = new('qps')
          PTID = new('ptid')
          QXD = new('qxd')
          QXT = new('qxt')
          QWD = new('qwd')
          QWT = new('qwt')
          QXL = new('qxl')
          QXB = new('qxb')
          RAR = new('rar')
          BED = new('bed')
          MXL = new('mxl')
          MUSICXML = new('musicxml')
          CRYPTONOTE = new('cryptonote')
          COD = new('cod')
          RM = new('rm')
          RMVB = new('rmvb')
          LINK66 = new('link66')
          ST = new('st')
          SEE = new('see')
          SEMA = new('sema')
          SEMD = new('semd')
          SEMF = new('semf')
          IFM = new('ifm')
          ITP = new('itp')
          IIF = new('iif')
          IPK = new('ipk')
          TWD = new('twd')
          TWDS = new('twds')
          MMF = new('mmf')
          TEACHER = new('teacher')
          FO = new('fo')
          SDKM = new('sdkm')
          SDKD = new('sdkd')
          DXP = new('dxp')
          SFS = new('sfs')
          SDC = new('sdc')
          SDA = new('sda')
          SDD = new('sdd')
          SMF = new('smf')
          SDW = new('sdw')
          VOR = new('vor')
          SGL = new('sgl')
          SMZIP = new('smzip')
          SM = new('sm')
          WADL = new('wadl')
          SXC = new('sxc')
          STC = new('stc')
          SXD = new('sxd')
          STD = new('std')
          SXI = new('sxi')
          STI = new('sti')
          SXM = new('sxm')
          SXW = new('sxw')
          SXG = new('sxg')
          STW = new('stw')
          SUS = new('sus')
          SUSP = new('susp')
          SVD = new('svd')
          SIS = new('sis')
          SISX = new('sisx')
          XSM = new('xsm')
          BDM = new('bdm')
          XDM = new('xdm')
          DDF = new('ddf')
          TAO = new('tao')
          PCAP = new('pcap')
          CAP = new('cap')
          DMP = new('dmp')
          TMO = new('tmo')
          TPT = new('tpt')
          MXS = new('mxs')
          TRA = new('tra')
          UFD = new('ufd')
          UFDL = new('ufdl')
          UTZ = new('utz')
          UMJ = new('umj')
          UNITYWEB = new('unityweb')
          UOML = new('uoml')
          VCX = new('vcx')
          VSD = new('vsd')
          VST = new('vst')
          VSS = new('vss')
          VSW = new('vsw')
          VIS = new('vis')
          VSF = new('vsf')
          WBXML = new('wbxml')
          WMLC = new('wmlc')
          WMLSC = new('wmlsc')
          WTB = new('wtb')
          NBP = new('nbp')
          WPD = new('wpd')
          WQD = new('wqd')
          STF = new('stf')
          XAR = new('xar')
          XFDL = new('xfdl')
          HVD = new('hvd')
          HVS = new('hvs')
          HVP = new('hvp')
          OSF = new('osf')
          OSFPVG = new('osfpvg')
          SAF = new('saf')
          SPF = new('spf')
          CMP = new('cmp')
          ZIR = new('zir')
          ZIRZ = new('zirz')
          ZAZ = new('zaz')
          SEVENZ = new('7z')
          ABW = new('abw')
          ACE = new('ace')
          WILDCARD_DMG = new('*dmg')
          ARJ = new('arj')
          AAB = new('aab')
          X32 = new('x32')
          U32 = new('u32')
          VOX = new('vox')
          AAM = new('aam')
          AAS = new('aas')
          BCPIO = new('bcpio')
          WILDCARD_BDOC = new('*bdoc')
          TORRENT = new('torrent')
          BLB = new('blb')
          BLORB = new('blorb')
          BZ = new('bz')
          BZ2 = new('bz2')
          BOZ = new('boz')
          CBR = new('cbr')
          CBA = new('cba')
          CBT = new('cbt')
          CBZ = new('cbz')
          CB7 = new('cb7')
          VCD = new('vcd')
          CFS = new('cfs')
          CHAT = new('chat')
          PGN = new('pgn')
          CRX = new('crx')
          CCO = new('cco')
          NSC = new('nsc')
          CPIO = new('cpio')
          CSH = new('csh')
          WILDCARD_DEB = new('*deb')
          UDEB = new('udeb')
          DGC = new('dgc')
          DIR = new('dir')
          DCR = new('dcr')
          DXR = new('dxr')
          CST = new('cst')
          CCT = new('cct')
          CXT = new('cxt')
          W3D = new('w3d')
          FGD = new('fgd')
          SWA = new('swa')
          WAD = new('wad')
          NCX = new('ncx')
          DTB = new('dtb')
          RES = new('res')
          DVI = new('dvi')
          EVY = new('evy')
          EVA = new('eva')
          BDF = new('bdf')
          GSF = new('gsf')
          PSF = new('psf')
          PCF = new('pcf')
          SNF = new('snf')
          PFA = new('pfa')
          PFB = new('pfb')
          PFM = new('pfm')
          AFM = new('afm')
          ARC = new('arc')
          SPL = new('spl')
          GCA = new('gca')
          ULX = new('ulx')
          GNUMERIC = new('gnumeric')
          GRAMPS = new('gramps')
          GTAR = new('gtar')
          HDF = new('hdf')
          PHP = new('php')
          INSTALL = new('install')
          WILDCARD_ISO = new('*iso')
          WILDCARD_KEY = new('*key')
          WILDCARD_NUMBERS = new('*numbers')
          WILDCARD_PAGES = new('*pages')
          JARDIFF = new('jardiff')
          JNLP = new('jnlp')
          KDBX = new('kdbx')
          LATEX = new('latex')
          LUAC = new('luac')
          LZH = new('lzh')
          LHA = new('lha')
          RUN = new('run')
          MIE = new('mie')
          PRC = new('prc')
          MOBI = new('mobi')
          APPLICATION = new('application')
          LNK = new('lnk')
          WMD = new('wmd')
          WMZ = new('wmz')
          XBAP = new('xbap')
          MDB = new('mdb')
          OBD = new('obd')
          CRD = new('crd')
          CLP = new('clp')
          WILDCARD_EXE = new('*exe')
          WILDCARD_DLL = new('*dll')
          COM = new('com')
          BAT = new('bat')
          WILDCARD_MSI = new('*msi')
          MVB = new('mvb')
          M13 = new('m13')
          M14 = new('m14')
          WILDCARD_WMF = new('*wmf')
          WILDCARD_WMZ = new('*wmz')
          WILDCARD_EMF = new('*emf')
          EMZ = new('emz')
          MNY = new('mny')
          PUB = new('pub')
          SCD = new('scd')
          TRM = new('trm')
          WRI = new('wri')
          NC = new('nc')
          CDF = new('cdf')
          PAC = new('pac')
          NZB = new('nzb')
          PL = new('pl')
          PM = new('pm')
          WILDCARD_PRC = new('*prc')
          WILDCARD_PDB = new('*pdb')
          P12 = new('p12')
          PFX = new('pfx')
          P7B = new('p7b')
          SPC = new('spc')
          P7R = new('p7r')
          WILDCARD_RAR = new('*rar')
          RPM = new('rpm')
          RIS = new('ris')
          SEA = new('sea')
          SH = new('sh')
          SHAR = new('shar')
          SWF = new('swf')
          XAP = new('xap')
          SQL = new('sql')
          SIT = new('sit')
          SITX = new('sitx')
          SRT = new('srt')
          SV4CPIO = new('sv4cpio')
          SV4CRC = new('sv4crc')
          T3 = new('t3')
          GAM = new('gam')
          TAR = new('tar')
          TCL = new('tcl')
          TK = new('tk')
          TEX = new('tex')
          TFM = new('tfm')
          TEXINFO = new('texinfo')
          TEXI = new('texi')
          WILDCARD_OBJ = new('*obj')
          USTAR = new('ustar')
          HDD = new('hdd')
          OVA = new('ova')
          OVF = new('ovf')
          VBOX = new('vbox')
          VBOX_EXTPACK = new('vbox-extpack')
          VDI = new('vdi')
          VHD = new('vhd')
          VMDK = new('vmdk')
          SRC = new('src')
          WEBAPP = new('webapp')
          DER = new('der')
          CRT = new('crt')
          PEM = new('pem')
          FIG = new('fig')
          WILDCARD_XLF = new('*xlf')
          XPI = new('xpi')
          XZ = new('xz')
          Z1 = new('z1')
          Z2 = new('z2')
          Z3 = new('z3')
          Z4 = new('z4')
          Z5 = new('z5')
          Z6 = new('z6')
          Z7 = new('z7')
          Z8 = new('z8')
          UVA = new('uva')
          UVVA = new('uvva')
          EOL = new('eol')
          DRA = new('dra')
          DTS = new('dts')
          DTSHD = new('dtshd')
          LVP = new('lvp')
          PYA = new('pya')
          ECELP4800 = new('ecelp4800')
          ECELP7470 = new('ecelp7470')
          ECELP9600 = new('ecelp9600')
          RIP = new('rip')
          AAC = new('aac')
          AIF = new('aif')
          AIFF = new('aiff')
          AIFC = new('aifc')
          CAF = new('caf')
          FLAC = new('flac')
          WILDCARD_M4A = new('*m4a')
          MKA = new('mka')
          M3U = new('m3u')
          WAX = new('wax')
          WMA = new('wma')
          RAM = new('ram')
          RA = new('ra')
          RMP = new('rmp')
          WILDCARD_RA = new('*ra')
          CDX = new('cdx')
          CIF = new('cif')
          CMDF = new('cmdf')
          CML = new('cml')
          CSML = new('csml')
          XYZ = new('xyz')
          BTIF = new('btif')
          PTI = new('pti')
          PSD = new('psd')
          AZV = new('azv')
          UVI = new('uvi')
          UVVI = new('uvvi')
          UVG = new('uvg')
          UVVG = new('uvvg')
          DJVU = new('djvu')
          DJV = new('djv')
          WILDCARD_SUB = new('*sub')
          DWG = new('dwg')
          DXF = new('dxf')
          FBS = new('fbs')
          FPX = new('fpx')
          FST = new('fst')
          MMR = new('mmr')
          RLC = new('rlc')
          ICO = new('ico')
          DDS = new('dds')
          MDI = new('mdi')
          WDP = new('wdp')
          NPX = new('npx')
          B16 = new('b16')
          TAP = new('tap')
          VTF = new('vtf')
          WBMP = new('wbmp')
          XIF = new('xif')
          PCX = new('pcx')
          THREEDS = new('3ds')
          RAS = new('ras')
          CMX = new('cmx')
          FH = new('fh')
          FHC = new('fhc')
          FH4 = new('fh4')
          FH5 = new('fh5')
          FH7 = new('fh7')
          WILDCARD_ICO = new('*ico')
          JNG = new('jng')
          SID = new('sid')
          WILDCARD_BMP = new('*bmp')
          WILDCARD_PCX = new('*pcx')
          PIC = new('pic')
          PCT = new('pct')
          PNM = new('pnm')
          PBM = new('pbm')
          PGM = new('pgm')
          PPM = new('ppm')
          RGB = new('rgb')
          TGA = new('tga')
          XBM = new('xbm')
          XPM = new('xpm')
          XWD = new('xwd')
          WSC = new('wsc')
          DAE = new('dae')
          DWF = new('dwf')
          GDL = new('gdl')
          GTW = new('gtw')
          MTS = new('mts')
          OGEX = new('ogex')
          X_B = new('x_b')
          X_T = new('x_t')
          VDS = new('vds')
          USDZ = new('usdz')
          BSP = new('bsp')
          VTU = new('vtu')
          DSC = new('dsc')
          CURL = new('curl')
          DCURL = new('dcurl')
          MCURL = new('mcurl')
          SCURL = new('scurl')
          SUB = new('sub')
          FLY = new('fly')
          FLX = new('flx')
          GV = new('gv')
          THREEDML = new('3dml')
          SPOT = new('spot')
          JAD = new('jad')
          WML = new('wml')
          WMLS = new('wmls')
          S = new('s')
          ASM = new('asm')
          C = new('c')
          CC = new('cc')
          CXX = new('cxx')
          CPP = new('cpp')
          H = new('h')
          HH = new('hh')
          DIC = new('dic')
          HTC = new('htc')
          F = new('f')
          FOR = new('for')
          F77 = new('f77')
          F90 = new('f90')
          HBS = new('hbs')
          JAVA = new('java')
          LUA = new('lua')
          MKD = new('mkd')
          NFO = new('nfo')
          OPML = new('opml')
          WILDCARD_ORG = new('*org')
          P = new('p')
          PAS = new('pas')
          PDE = new('pde')
          SASS = new('sass')
          SCSS = new('scss')
          ETX = new('etx')
          SFV = new('sfv')
          YMP = new('ymp')
          UU = new('uu')
          VCS = new('vcs')
          VCF = new('vcf')
          UVH = new('uvh')
          UVVH = new('uvvh')
          UVM = new('uvm')
          UVVM = new('uvvm')
          UVP = new('uvp')
          UVVP = new('uvvp')
          UVS = new('uvs')
          UVVS = new('uvvs')
          UVV = new('uvv')
          UVVV = new('uvvv')
          DVB = new('dvb')
          FVT = new('fvt')
          MXU = new('mxu')
          M4U = new('m4u')
          PYV = new('pyv')
          UVU = new('uvu')
          UVVU = new('uvvu')
          VIV = new('viv')
          F4V = new('f4v')
          FLI = new('fli')
          FLV = new('flv')
          M4V = new('m4v')
          MKV = new('mkv')
          MK3D = new('mk3d')
          MKS = new('mks')
          MNG = new('mng')
          ASF = new('asf')
          ASX = new('asx')
          VOB = new('vob')
          WM = new('wm')
          WMV = new('wmv')
          WMX = new('wmx')
          WVX = new('wvx')
          AVI = new('avi')
          MOVIE = new('movie')
          SMV = new('smv')
          ICE = new('ice')
          MHT = new('mht')
        end
      end
    end
  end
end
