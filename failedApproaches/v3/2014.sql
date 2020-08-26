-- Most Popular Languages by Pull requests
-- Source: githubarchive public data set via Google BigQuery http://githubarchive.org/

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-01' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201401`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-02' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201402`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-03' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201403`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-04' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201404`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-05' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201405`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-06' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201406`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-07' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201407`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-08' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201408`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-09' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201409`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-10' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201410`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-11' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201411`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1


UNION ALL

SELECT
  JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') AS events_repo_language,
  COUNT(CASE WHEN (events.type = 'PullRequestEvent') THEN 1 ELSE NULL END) AS events_count_pull_request,
  '2014-12' AS created_at
FROM (
  SELECT
    *
  FROM `githubarchive.month.201412`) AS events
WHERE
  JSON_EXTRACT_SCALAR(events.payload, '$.action') = 'opened'
  AND JSON_EXTRACT_SCALAR(events.payload, '$.pull_request.base.repo.language') IS NOT NULL
GROUP BY
  1
ORDER BY
  2 DESC;
