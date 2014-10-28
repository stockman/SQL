SELECT ct.nid
,n.title
,ct.pid
,(SELECT distinct nn.title
  FROM acquia_drupal.node nn where (nn.nid = ct.pid)) as t
  FROM acquia_drupal.casetracker_case ct
       INNER JOIN acquia_drupal.node n ON (ct.nid = n.nid)
       