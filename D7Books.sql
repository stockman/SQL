SELECT distinct b.mlid
      ,b.nid
      ,b.bid
      ,n.title
      ,(SELECT distinct nn.title
  FROM acquia_drupal.node nn
       where (nn.nid = b.bid)) as t
  FROM acquia_drupal.node n
       LEFT OUTER JOIN acquia_drupal.book b ON (n.nid = b.nid)