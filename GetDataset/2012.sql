-- Most Popular Languages by Pull requests
-- Source: githubarchive public data set via Google BigQuery http://githubarchive.org/

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-01' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201201`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-02' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201202`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-03' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201203`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-04' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201204`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-05' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201205`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-06' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201206`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-07' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201207`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-08' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201208`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-09' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201209`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-10' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201210`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-11' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201211`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2012-12' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201212`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1
ORDER BY
  2 DESC;
