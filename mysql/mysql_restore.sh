gzip -d AnnotationTool-201810131537.sql.gz
mysql -u root -p AnnotationTool < AnnotationTool-201810131537.sql
mysql -u root -p AnnotationTool_prod < AnnotationTool_prod-201810161010.sql
mysql -u root -p AnnotationTool_test < AnnotationTool_prod-201810161010.sql

这个会还原到备份的那个时间点的所有数据，新增的数据，还是被删除掉的数据，都会被还原。
