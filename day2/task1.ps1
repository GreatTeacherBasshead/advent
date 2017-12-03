<#
For each row, determine the difference between the largest value and the smallest value; the checksum is the sum of all of these differences.

For example, given the following spreadsheet:

5 1 9 5
7 5 3
2 4 6 8
The first row's largest and smallest values are 9 and 1, and their difference is 8.
The second row's largest and smallest values are 7 and 3, and their difference is 4.
The third row's difference is 6.
In this example, the spreadsheet's checksum would be 8 + 4 + 6 = 18.

What is the checksum for the spreadsheet in your puzzle input?
#>

$in = "737	1866	1565	1452	1908	1874	232	1928	201	241	922	281	1651	1740	1012	1001
339	581	41	127	331	133	51	131	129	95	499	527	518	435	508	494
1014	575	1166	259	152	631	1152	1010	182	943	163	158	1037	1108	1092	887
56	491	409	1263	1535	41	1431	1207	1393	700	1133	53	131	466	202	62
632	403	118	352	253	672	711	135	116	665	724	780	159	133	90	100
1580	85	1786	1613	1479	100	94	1856	546	76	1687	1769	1284	1422	1909	1548
479	356	122	372	786	1853	979	116	530	123	1751	887	109	1997	160	1960
446	771	72	728	109	369	300	746	86	910	566	792	616	84	338	57
6599	2182	200	2097	4146	7155	7018	1815	1173	4695	201	7808	242	3627	222	7266
1729	600	651	165	1780	2160	626	1215	149	179	1937	1423	156	129	634	458
1378	121	146	437	1925	2692	130	557	2374	2538	2920	2791	156	317	139	541
1631	176	1947	259	2014	153	268	752	2255	347	227	2270	2278	544	2379	349
184	314	178	242	145	410	257	342	183	106	302	320	288	151	449	127
175	5396	1852	4565	4775	665	4227	171	4887	181	2098	4408	2211	3884	2482	158
1717	3629	244	258	281	3635	235	4148	3723	4272	3589	4557	4334	4145	3117	4510
55	258	363	116	319	49	212	44	303	349	327	330	316	297	313	67"

$arr = $in -split "\n"
$rez = 0

foreach ($line in $arr) {
    $row = $line -split "\t"
    $max = [int]::Parse($row[0])
    $min = [int]::Parse($row[0])

    foreach ($el in $row) {
        $el = [int]::Parse($el)
        if ($el -gt $max) {
            $max = $el
        }
        if ($el -lt $min) {
            $min = $el
        }
    }

    $diff = $max - $min
    $rez += $diff
}

$rez