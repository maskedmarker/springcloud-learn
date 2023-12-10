-- mysql45讲
create table t (
    id int(11) not null auto_increment,
    c int(11) default null,
    d int(11) default null,
    primary key (id),
    unique key uk_t_c (c)
) engine=innodb;

--当填充null的时候,使用自增值
insert into t values(null, 1, 1);
--字段指定为 0、null 或未指定值,也使用自增值
insert into t values(0, 2, 2);