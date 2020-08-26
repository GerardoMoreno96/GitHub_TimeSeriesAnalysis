-- Most Popular Languages by Pull requests
-- Source: githubarchive public data set via Google BigQuery http://githubarchive.org/

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-01' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202001`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  ) 
GROUP BY
  1

UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-02' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202002`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  ) 
GROUP BY
  1

UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-03' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202003`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  )
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-04' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202004`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  ) 
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-05' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202005`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  )
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-06' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202006`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  ) 
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2020-07' AS created_at
FROM (
  SELECT
   type,
   payload,
   org.id AS org_id
  FROM `githubarchive.month.202007`) AS events
WHERE
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND events.org_id in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR 
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') >= '500'
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  )
  OR
  (JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
  AND (
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%hackathon%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%project%'
      OR 
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%university%'
      OR
      LOWER(JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.description')) like '%research%'

    )
  AND events.org_id not in (6233994,12048914,17182,60365,2976699,476009,4723070,6112993,5643904,3299148,2232217,8594673,19476959,10639145,13131,1121538,1416818,2058330,3240209,6930294,2198187,121582,29740,1875564,314135,3342302,650614,30324982,2654995,622654,342708,3179841,1637638,3436075,6615685,4161311,12504344,1820812,549085,5508982,69631,3736783,3841605,852157,2178663,9919,2970787,5469341,4327788,3717923,7378196,1342004,884254,2813507,11959626,9221727,1459110,3858513,34094527,3171503,1769238,3935164,3290129,10520119,10165524,146042,16501525,923954,740088,6789362,790012,6154722,7565578,5852021,1261292,7979569,18560992,3663132,5366810,25333391,131524,62159567,24963858,22923188,2439809,8619669,17653958,772948,22351667,21367267,19784987,14983110,19614164,6171823,33735930,7916837,1066228,2566135,6175168,30530034,1544687,913567,1389534,9950313,341053,3158015,14107257,35002399,8587866,1728152,7717624,304263,8312820,2628558,766800,303157,1672744,17219288,71799,1862418,12087190,6210390,1101495,787835,1391938,1804169,83422,17065465,40239564,28732568,40366363,13899334,565305,16397521,50278,400135,9951955,11679135,35972832,9208824,710715,686511,379216,4559353,10091159,60456076,6911160,4430336,3082775,6004705)
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.stargazers_count') < '500'
  ) 
GROUP BY
  1
ORDER BY
  2 DESC;
