import QtQuick 2.0

Item {
    property real widthmm: 1700 // in mm
    property real heightmm: 660 // in mm

    property var zones:  [
        {
            "name":"start",
            "path":[Qt.point(0.0015836742076506137,0.7339755830845085),Qt.point(0.013062094776964328,0.6721931868919871),Qt.point(0.04054073795808639,0.6721931868919871),Qt.point(0.05514963686451019,0.7312893919456731),Qt.point(0.040888568884427344,0.7966533763232371),Qt.point(0.01340992570330528,0.7984441704157585)]
        },
        {
            "name":"madrid",
            "path":[Qt.point(0.11636787990093302,0.5522099826920941),Qt.point(0.14489001586109865,0.669506995753205),Qt.point(0.08610658930906255,0.6990550982800213),Qt.point(0.07010636669727494,0.6524944518740919)]
        },
        {
            "name":"lisbon",
            "path":[Qt.point(0.019670882377483944,0.8181429054337073),Qt.point(0.036714597768315156,0.8181429054337073),Qt.point(0.05201915852742086,0.9372307125873397),Qt.point(0.00019235050226604916,0.9524524623738782)]
        },
        {
            "name":"obstacle1",
            "path":[Qt.point(0.07949780170854291,0.772477656073985),Qt.point(0.10106331914182728,0.7071136716964207),Qt.point(0.16575987144168036,0.7885948029068377),Qt.point(0.1678468569997468,0.8369462434052884),Qt.point(0.11741137267997658,0.8262014788501069)]
        },
        {
            "name":"clouds1",
            "path":[Qt.point(0.07567166151877168,0.2173314873878205),Qt.point(0.12054185101706594,0.1680846498430555),Qt.point(0.2099343990872927,0.1904695759997861),Qt.point(0.21097789186631558,0.3256745299862712),Qt.point(0.16019457662020437,0.3203021477086539)]
        },
        {
            "name":"paris",
            "path":[Qt.point(0.23463039485766635,0.2307624430818377),Qt.point(0.2721961349027383,0.07585875407745724),Qt.point(0.30002260901022215,0.2235992667116986),Qt.point(0.26697867100760325,0.2531473692385149)]
        },
        {
            "name":"obstacle2",
            "path":[Qt.point(0.18245575590617064,0.5387790269980235),Qt.point(0.20297778056043214,0.4895321894533119),Qt.point(0.28193540084036806,0.6363773050412928),Qt.point(0.25550025043826885,0.6802517603083867),Qt.point(0.2120213846453592,0.6068292025144231)]
        },
        {
            "name":"bern",
            "path":[Qt.point(0.388719495227767,0.23523942831319444),Qt.point(0.4172416311879119,0.13405956208488246),Qt.point(0.46002483512813974,0.22986704603557684),Qt.point(0.42698089712552073,0.2594151485623932),Qt.point(0.4022849013551471,0.26568292788627135)]
        },
        {
            "name":"obstacle3",
            "path":[Qt.point(0.3723714416896177,0.4152142346130341),Qt.point(0.44993773826418976,0.24419339877585455),Qt.point(0.5393302863344167,0.16092147347291652),Qt.point(0.5915049252859124,0.29344023632061966),Qt.point(0.4760250577399275,0.3820845439011218),Qt.point(0.4085458580293258,0.4671472632965812),Qt.point(0.3838498622589521,0.492218380592094)]
        },
        {
            "name":"clouds2",
            "path":[Qt.point(0.4015892395024652,0.7796408324441773),Qt.point(0.4781120432979938,0.7348709801307692),Qt.point(0.5379389626290528,0.7617328915188034),Qt.point(0.5368954698500092,0.8826114927649573),Qt.point(0.4878513092356027,0.8969378455052884),Qt.point(0.4548073712329838,0.8297830670351496)]
        },
        {
            "name":"rome",
            "path":[Qt.point(0.523330063722629,0.7008458923725427),Qt.point(0.542112933745165,0.6310049227636753),Qt.point(0.5852439686117337,0.631900319809936),Qt.point(0.5953310654756836,0.7241262155755341),Qt.point(0.5633306202521083,0.7402433624083867),Qt.point(0.5386346244817347,0.7393479653620727)]
        },
        {
            "name":"budapest",
            "path":[Qt.point(0.6895932465147251,0.3874569261787394),Qt.point(0.7048978072738311,0.33552389749519235),Qt.point(0.7313329576759299,0.29970801564449767),Qt.point(0.7445505328769694,0.297917221551923),Qt.point(0.7716813451317506,0.34537326500416665),Qt.point(0.7720291760581123,0.38118914685486094),Qt.point(0.7358547597184041,0.4152142346130341),Qt.point(0.7101152711689868,0.41700502870560885)]
        },
        {
            "name":"athens",
            "path":[Qt.point(0.736202590644745,0.9157411834769231),Qt.point(0.7466375184350359,0.8566449784231838),Qt.point(0.777942301805929,0.8459002138680021),Qt.point(0.7984643264601905,0.862912757747062),Qt.point(0.8012469738709391,0.9417076978186966),Qt.point(0.7668117121629563,0.9515570653276175),Qt.point(0.7473331802877178,0.9560340505589744)]
        },
        {
            "name":"obstacle4",
            "path":[Qt.point(0.676375671313686,0.4895321894533119),Qt.point(0.7195067061802548,0.4205866168906514),Qt.point(0.8370735592843063,0.6471220695964744),Qt.point(0.8026382975763237,0.7089044657889957),Qt.point(0.7240285082227286,0.6345865109487179)]
        },
        {
            "name":"istanbul",
            "path":[Qt.point(0.9532490886829735,0.6704023927994658),Qt.point(0.9967279544758831,0.6686115987068909),Qt.point(0.9995106018866315,0.7724776560740384),Qt.point(0.9466403010824533,0.769791464935203),Qt.point(0.9476837938614765,0.7241262155755341),Qt.point(0.9501186103458837,0.6954735100949786)]
        },
        {
            "name":"obstacle5",
            "path":[Qt.point(0.7066369619055565,0.20658672283258542),Qt.point(0.7452461947296722,0.13047797389983973),Qt.point(0.8537694437487755,0.1770386203057691),Qt.point(0.8822915797089412,0.2764276924415062),Qt.point(0.8175950274090678,0.28448626585790593),Qt.point(0.7511593204775098,0.25493816333108954)]
        },
        {
            "name":"kiev",
            "path":[Qt.point(0.8509867963380274,0.1465951207326388),Qt.point(0.8756827921084217,0.04541525450432682),Qt.point(0.8930743384255734,0.04810144564316232),Qt.point(0.9146398558588578,0.1331641650386215),Qt.point(0.9153355177115605,0.17077084098189088),Qt.point(0.889943860088484,0.19763275236992517),Qt.point(0.8676826808025179,0.1877833848609507),Qt.point(0.8614217241283393,0.1680846498430555)]
        },
        {
            "name":"finish",
            "path":[Qt.point(0.9452489773770689,0.5835488793114316),Qt.point(0.9588143835044699,0.5226618801652243),Qt.point(0.9869886885382738,0.5235572772114849),Qt.point(0.9998584328129717,0.5808626881726495),Qt.point(0.9873365194646146,0.6462266725502137),Qt.point(0.9591622144308112,0.648017466642735)]
        }
    ]
}
