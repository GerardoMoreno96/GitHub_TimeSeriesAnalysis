-- Most Popular Languages by Pull requests
-- Source: githubarchive public data set via Google BigQuery http://githubarchive.org/

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-01' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201801`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-02' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201802`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-03' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201803`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-04' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201804`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-05' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201805`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-06' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201806`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-07' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201807`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-08' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201808`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-09' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201809`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-10' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201810`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-11' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201811`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2018-12' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201812`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1
ORDER BY
  2 DESC;
