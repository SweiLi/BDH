

create table mdtbl_bridge_type (
type_id              CHAR(10)                       not null,
type_name            VARCHAR(50),
type_describe        VARCHAR(200),
primary key (type_id)
);

create table mdtbl_m_p_config (
m_p_config_id        CHAR(18)                       not null,
m_p_config_name      VARCHAR(100),
m_p_config_remark    VARCHAR(100),
primary key (m_p_config_id)
);

create table bridgetypess_m_p_configs (
type_id              CHAR(10)                       not null,
m_p_config_id        CHAR(18)                       not null,
primary key (type_id, m_p_config_id),
foreign key (type_id)
      references mdtbl_bridge_type (type_id),
foreign key (m_p_config_id)
      references mdtbl_m_p_config (m_p_config_id)
);

create unique index bridgetypess_m_p_configs_PK on bridgetypess_m_p_configs (
type_id ASC,
m_p_config_id ASC
);

create  index bridgetypes_m_p_configs_FK on bridgetypess_m_p_configs (
type_id ASC
);

create  index bridgetypes_m_p_configs2_FK on bridgetypess_m_p_configs (
m_p_config_id ASC
);

create table britype_config (
type_id              CHAR(10)                       not null,
m_p_config_id        CHAR(18)                       not null,
primary key (type_id, m_p_config_id),
foreign key (type_id)
      references mdtbl_bridge_type (type_id),
foreign key (m_p_config_id)
      references mdtbl_m_p_config (m_p_config_id)
);

create unique index britype_config_PK on britype_config (
type_id ASC,
m_p_config_id ASC
);

create  index britype_config_FK on britype_config (
type_id ASC
);

create  index britype_config2_FK on britype_config (
m_p_config_id ASC
);

create table mdtbl_bridge_tools (
tool_id              CHAR(18)                       not null,
tool_name            VARCHAR(100),
tool_url             VARCHAR(200),
tool_describe        VARCHAR(200),
tool_remark          VARCHAR(100),
tool_factory         VARCHAR(100),
tool_type            VARCHAR(100),
tool_precision       VARCHAR(50),
tool_code            VARCHAR(50),
primary key (tool_id)
);

create table britypes_tools (
type_id              CHAR(10)                       not null,
tool_id              CHAR(18)                       not null,
primary key (type_id, tool_id),
foreign key (type_id)
      references mdtbl_bridge_type (type_id),
foreign key (tool_id)
      references mdtbl_bridge_tools (tool_id)
);

create unique index britypes_tools_PK on britypes_tools (
type_id ASC,
tool_id ASC
);

create  index britypes_tools_FK on britypes_tools (
type_id ASC
);

create  index britypes_tools2_FK on britypes_tools (
tool_id ASC
);

create table mdtbl_bridge_client (
client_id            CHAR(18)                       not null,
prj_id               CHAR(18),
client_name          VARCHAR(50),
client_address       VARCHAR(100),
client_postcode      VARCHAR(10),
client_remark        VARCHAR(100),
client_qq            VARCHAR(20),
client_tel           VARCHAR(18),
client_email         VARCHAR(50),
primary key (client_id),
foreign key (prj_id)
      references mdtbl_project (prj_id)
);

create table mdtbl_project (
prj_id               CHAR(18)                       not null,
client_id            CHAR(18),
prj_name             VARCHAR(100),
begintime            TIMESTAMP,
endtime              DATE,
prj_describe         VARCHAR(300),
pri_contract         VARCHAR(50),
prj_man              VARCHAR(20),
prj_status           SMALLINT,
check_man            VARCHAR(20),
check_date           DATE,
prj_principal        VARCHAR(50),
pri_sign_date        DATE,
pri_address          VARCHAR(100),
primary key (prj_id),
foreign key (client_id)
      references mdtbl_bridge_client (client_id)
);

create table mdtbl_bridge_jgjs (
bri_jgjs_id          CHAR(18)                       not null,
bri_id               CHAR(18),
bri_jgjs_length      FLOAT,
bri_jgjs_deckwidth   FLOAT,
bri_jgjs_roadwaywidth FLOAT,
bri_jgjs_deckheight  FLOAT,
bri_jgjs_downheight  FLOAT,
bri_jgjs_upheight    FLOAT,
bri_jgjs_rampwidth   FLOAT,
bri_jgjs_rampallwidth FLOAT,
bri_jgjs_ramplinear  VARCHAR(50),
bri_jgjs_expansiontype VARCHAR(50),
bri_jgjs_bearingtype VARCHAR(50),
bri_jgjs_earthquakeacce VARCHAR(50),
bri_jgjs_conicalslope VARCHAR(50),
bri_jgjs_keepslope   VARCHAR(50),
bri_jgjs_regulatingstructure VARCHAR(50),
bri_jgjs_csw         VARCHAR(50),
bri_jgjs_designsw    VARCHAR(50),
bri_jgjs_hissw       VARCHAR(50),
primary key (bri_jgjs_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create table mdtbl_bridge_dazl (
bri_dazl_id          CHAR(18)                       not null,
bri_id               CHAR(18),
bri_dazl_designdraw  VARCHAR(50),
bri_dazl_designfile  VARCHAR(50),
bri_dazl_acceptancefile VARCHAR(50),
bri_dazl_execfile    VARCHAR(50),
bri_dazl_succfile    VARCHAR(50),
bri_dazl_adminfile   VARCHAR(50),
bri_dazl_regulardoc  VARCHAR(50),
bri_dazl_specialdoc  VARCHAR(50),
bri_dazl_repairdoc   VARCHAR(50),
bri_dazl_archiveno   VARCHAR(50),
bri_dazl_archives    VARCHAR(50),
bri_dazl_builddate   TIMESTAMP,
primary key (bri_dazl_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create table mdtbl_bridge_xzsb (
bri_id               CHAR(18)                       not null,
prj_id               CHAR(18),
bri_jgjs_id          CHAR(18),
bri_dazl_id          CHAR(18),
bri_code             VARCHAR(100),
bri_name             VARCHAR(100),
bri_pic_name         VARCHAR(100),
bri_xzsb_number      VARCHAR(50),
bri_xzsb_name        VARCHAR(100),
bri_xzsb_level       INTEGER,
bri_xzsb_pile        VARCHAR(50),
bri_xzsb_funtype     VARCHAR(50),
bri_xzsb_downchannel VARCHAR(50),
bri_xzsb_downpile    VARCHAR(100),
bri_xzsb_designload  VARCHAR(50),
bri_xzsb_goload      FLOAT,
bri_xzsb_slopelend   VARCHAR(20),
bri_xzsb_pavement    VARCHAR(50),
bri_xzsb_unit        VARCHAR(100),
bri_xzsb_date        TIMESTAMP,
primary key (bri_id),
foreign key (prj_id)
      references mdtbl_project (prj_id),
foreign key (bri_jgjs_id)
      references mdtbl_bridge_jgjs (bri_jgjs_id),
foreign key (bri_dazl_id)
      references mdtbl_bridge_dazl (bri_dazl_id)
);

create table mdtbl_bridge_children (
bridge_children_id   CHAR(18)                       not null,
bri_id               CHAR(18),
type_id              CHAR(10),
bridge_children_name VARCHAR(100),
bridge_children_discribe VARCHAR(500),
primary key (bridge_children_id),
foreign key (type_id)
      references mdtbl_bridge_type (type_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create table mdtbl_daily_detection (
daily_app_id         CHAR(18)                       not null,
bridge_children_id   CHAR(18),
daily_pro_place      VARCHAR(100),
daily_task_id        VARCHAR(100),
daily_exp_base       VARCHAR(100),
daily_sample_id      VARCHAR(50),
daily_sample_name    VARCHAR(100),
daily_sample_des     VARCHAR(100),
daily_temperature    VARCHAR(20),
daily_humidness      VARCHAR(20),
daily_exp_day        TIMESTAMP,
daily_main_device    VARCHAR(100),
daily_exp_man        VARCHAR(30),
daily_auditor        VARCHAR(30),
daily_remark         VARCHAR(500),
primary key (daily_app_id),
foreign key (bridge_children_id)
      references mdtbl_bridge_children (bridge_children_id)
);

create table daily_out_disease (
recip_disease_id     CHAR(18)                       not null,
daily_app_id         CHAR(18),
disease_position     VARCHAR(50),
disease_type         VARCHAR(30),
disease_describe     VARCHAR(300),
disease_remark       VARCHAR(100),
primary key (recip_disease_id),
foreign key (daily_app_id)
      references mdtbl_daily_detection (daily_app_id)
);

create unique index daily_out_disease_PK on daily_out_disease (
recip_disease_id ASC
);

create  index recip_disease_FK on daily_out_disease (
daily_app_id ASC
);

create table mdtbl_deal_pic (
deal_pic_id          CHAR(18)                       not null,
recip_disease_id     CHAR(18),
deal_pic_name        VARCHAR(200),
deal_pic_discribe    VARCHAR(500),
deal_pic_style       INTEGER,
deal_pic_type        VARCHAR(30),
deal_pic_url         VARCHAR(200),
primary key (deal_pic_id),
foreign key (recip_disease_id)
      references daily_out_disease (recip_disease_id)
);

create table mdtbl_pics (
pics_id              CHAR(18)                       not null,
mdt_pics_id          CHAR(18),
pics_name            VARCHAR(50),
pics_title           VARCHAR(100),
pics_describe        VARCHAR(300),
pics_url             VARCHAR(100),
pics_time            TIMESTAMP,
pics_man             VARCHAR(50),
primary key (pics_id),
foreign key (mdt_pics_id)
      references mdtbl_pics (pics_id)
);

create table mdtbl_constreng_test (
con_streng_id        CHAR(18)                       not null,
bridge_children_id   CHAR(18),
material_com_base    VARCHAR(100),
material_com_name    VARCHAR(100),
material_com_mark    VARCHAR(100),
material_com_sample_name VARCHAR(100),
material_com_check_hum VARCHAR(30),
material_com_check_tem VARCHAR(30),
material_com_main_dev VARCHAR(100),
material_com_testname VARCHAR(100),
material_com_sampleid VARCHAR(50),
material_com_sample_des VARCHAR(100),
material_comcheck_day TIMESTAMP,
con_resistivity_level VARCHAR(30),
con_resistivity_year VARCHAR(30),
con_resistivity_pump CHAR(2),
material_com_test_man VARCHAR(30),
material_com_check_man VARCHAR(30),
primary key (con_streng_id),
foreign key (bridge_children_id)
      references mdtbl_bridge_children (bridge_children_id)
);

create table mdtbl_material_com (
material_com_id      CHAR(18)                       not null,
bridge_children_id   CHAR(18),
material_com_testname VARCHAR(100),
material_com_base    VARCHAR(100),
material_com_name    VARCHAR(100),
material_com_mark    VARCHAR(100),
material_com_sample_name VARCHAR(100),
material_com_check_hum VARCHAR(30),
material_com_check_tem VARCHAR(30),
material_com_main_dev VARCHAR(100),
material_com_sampleid VARCHAR(50),
material_com_sample_des VARCHAR(100),
material_comcheck_day TIMESTAMP,
material_com_test_man VARCHAR(30),
material_com_check_man VARCHAR(30),
primary key (material_com_id),
foreign key (bridge_children_id)
      references mdtbl_bridge_children (bridge_children_id)
);

create table mdtbl_pic (
pic_id               CHAR(18)                       not null,
daily_app_id         CHAR(18),
bridge_children_id   CHAR(18),
recip_disease_id     CHAR(18),
material_com_id      CHAR(18),
con_streng_id        CHAR(18),
pics_id              CHAR(18),
pic_name             VARCHAR(50),
pic_title            VARCHAR(50),
pic_describe         VARCHAR(300),
pic_serial           CHAR(18),
pic_man              VARCHAR(50),
pic_time             TIMESTAMP,
primary key (pic_id),
foreign key (pics_id)
      references mdtbl_pics (pics_id),
foreign key (bridge_children_id)
      references mdtbl_bridge_children (bridge_children_id),
foreign key (daily_app_id)
      references mdtbl_daily_detection (daily_app_id),
foreign key (recip_disease_id)
      references daily_out_disease (recip_disease_id),
foreign key (con_streng_id)
      references mdtbl_constreng_test (con_streng_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create table dealpic_pics (
deal_pic_id          CHAR(18)                       not null,
pic_id               CHAR(18)                       not null,
primary key (deal_pic_id, pic_id),
foreign key (deal_pic_id)
      references mdtbl_deal_pic (deal_pic_id),
foreign key (pic_id)
      references mdtbl_pic (pic_id)
);

create unique index dealpic_pics_PK on dealpic_pics (
deal_pic_id ASC,
pic_id ASC
);

create  index dealpic_pics_FK on dealpic_pics (
deal_pic_id ASC
);

create  index dealpic_pics2_FK on dealpic_pics (
pic_id ASC
);

create table mdt_doc_template (
doc_temp_id          CHAR(18)                       not null,
doc_temp_name        VARCHAR(100),
doc_temp_descr       VARCHAR(300),
doc_temp_url         VARCHAR(200),
doc_temp_type        VARCHAR(100),
primary key (doc_temp_id)
);

create table mdt_doc_column (
doc_col_id           CHAR(18)                       not null,
doc_temp_id          CHAR(18),
doc_col_name         VARCHAR(200),
doc_col_level        VARCHAR(20),
doc_col_order        INTEGER,
doc_col_parentid     CHAR(18),
primary key (doc_col_id),
foreign key (doc_temp_id)
      references mdt_doc_template (doc_temp_id)
);

create table mdt_col_con_media (
con_media_id         CHAR(18)                       not null,
doc_col_id           CHAR(18),
con_media_title      VARCHAR(100),
con_media_filename   VARCHAR(50),
con_media_descr      VARCHAR(300),
con_media_url        VARCHAR(200),
con_media_order      INTEGER,
con_media_showtype   VARCHAR(20),
con_media_pic_url    VARCHAR(200),
primary key (con_media_id),
foreign key (doc_col_id)
      references mdt_doc_column (doc_col_id)
);

create unique index mdt_col_con_media_PK on mdt_col_con_media (
con_media_id ASC
);

create  index col_medias_FK on mdt_col_con_media (
doc_col_id ASC
);

create table mdt_col_con_table (
con_table_id         CHAR(18)                       not null,
doc_col_id           CHAR(18),
con_table_title      VARCHAR(100),
con_table_filename   VARCHAR(100),
con_table_order      INTEGER,
con_table_style      VARCHAR(20),
con_table_url        VARCHAR(200),
primary key (con_table_id),
foreign key (doc_col_id)
      references mdt_doc_column (doc_col_id)
);

create unique index mdt_col_con_table_PK on mdt_col_con_table (
con_table_id ASC
);

create  index col_tables_FK on mdt_col_con_table (
doc_col_id ASC
);

create table mdt_col_con_text (
con_text_id          CHAR(18)                       not null,
doc_col_id           CHAR(18),
con_text             LONG VARBINARY,
con_text_order       INTEGER,
con_text_style       VARCHAR(100),
primary key (con_text_id),
foreign key (doc_col_id)
      references mdt_doc_column (doc_col_id)
);

create unique index mdt_col_con_text_PK on mdt_col_con_text (
con_text_id ASC
);

create  index col_texts_FK on mdt_col_con_text (
doc_col_id ASC
);

create table mdt_col_template (
col_temp_id          CHAR(18)                       not null,
doc_col_id           CHAR(18),
col_temp_desc        VARCHAR(300),
col_temp_name        VARCHAR(100),
col_temp_url         VARCHAR(200),
col_temp_filename    VARCHAR(50),
col_temp_man         VARCHAR(30),
col_temp_time        TIMESTAMP,
primary key (col_temp_id),
foreign key (doc_col_id)
      references mdt_doc_column (doc_col_id)
);

create unique index mdt_col_template_PK on mdt_col_template (
col_temp_id ASC
);

create  index col_templates_FK on mdt_col_template (
doc_col_id ASC
);

create unique index mdt_doc_column_PK on mdt_doc_column (
doc_col_id ASC
);

create  index template_columns_FK on mdt_doc_column (
doc_temp_id ASC
);

create unique index mdt_doc_template_PK on mdt_doc_template (
doc_temp_id ASC
);

create table mdtbl_bri_com_dis_info (
bcdi_id              CHAR(10)                       not null,
bcdi_bridgetype      VARCHAR(50),
bcdi_struc           VARCHAR(50),
bcdi_component_name  VARCHAR(50),
bcdi_disease         VARCHAR(50),
bcdi_scale           INTEGER,
bcdi_qualitative     VARCHAR(300),
bcdi_quantify        VARCHAR(300),
bcdi_is_identify     INTEGER,
primary key (bcdi_id)
);

create unique index mdtbl_bri_com_dis_info_PK on mdtbl_bri_com_dis_info (
bcdi_id ASC
);

create table mdtbl_bri_comp_asse (
brid_comp_id         CHAR(18)                       not null,
brid_comp_scale      INTEGER,
brid_comp_describe   VARCHAR(200),
is_main              INTEGER,
primary key (brid_comp_id)
);

create unique index mdtbl_bri_comp_asse_PK on mdtbl_bri_comp_asse (
brid_comp_id ASC
);

create table mdtbl_bri_structure_weight (
structure_weight_id  CHAR(18)                       not null,
structure_name       VARCHAR(60),
structure_weight     FLOAT,
primary key (structure_weight_id)
);

create unique index mdtbl_bri_structure_weight_PK on mdtbl_bri_structure_weight (
structure_weight_id ASC
);

create table mdtbl_bri_whole_asse (
whole_asse_id        CHAR(18)                       not null,
whole_scale          INTEGER,
whole_describe       VARCHAR(200),
whole_measure        VARCHAR(200),
primary key (whole_asse_id)
);

create unique index mdtbl_bri_whole_asse_PK on mdtbl_bri_whole_asse (
whole_asse_id ASC
);

create table mdtbl_brid_comp_weight (
comp_weight_id       CHAR(18)                       not null,
bridger_type         VARCHAR(50),
bridge_structure     VARCHAR(50),
type_i               INTEGER,
asses_comp           VARCHAR(50),
comp_weight          FLOAT,
primary key (comp_weight_id)
);

create unique index mdtbl_brid_comp_weight_PK on mdtbl_brid_comp_weight (
comp_weight_id ASC
);

create unique index mdtbl_bridge_children_PK on mdtbl_bridge_children (
bridge_children_id ASC
);

create  index bridge_bridgetyp_childs_FK on mdtbl_bridge_children (
type_id ASC
);

create  index bridge_son_bridges_FK on mdtbl_bridge_children (
bri_id ASC
);

create unique index mdtbl_bridge_client_PK on mdtbl_bridge_client (
client_id ASC
);

create  index project_client2_FK on mdtbl_bridge_client (
prj_id ASC
);

create table mdtbl_bridge_compoment (
compoment_id         CHAR(18)                       not null,
compoment_name       VARCHAR(50),
compoment_abbr       CHAR(8),
compoment_describe   VARCHAR(200),
is_main_compoment    VARCHAR(100),
bridge_type          VARCHAR(30),
primary key (compoment_id)
);

create unique index mdtbl_bridge_compoment_PK on mdtbl_bridge_compoment (
compoment_id ASC
);

create unique index mdtbl_bridge_dazl_PK on mdtbl_bridge_dazl (
bri_dazl_id ASC
);

create  index bridge_dazl_FK on mdtbl_bridge_dazl (
bri_id ASC
);

create unique index mdtbl_bridge_jgjs_PK on mdtbl_bridge_jgjs (
bri_jgjs_id ASC
);

create  index bridge_jgjs_FK on mdtbl_bridge_jgjs (
bri_id ASC
);

create table mdtbl_bridge_jszk (
bri_jszk_id          CHAR(18)                       not null,
bri_id               CHAR(18),
bri_jszk_checkdate   TIMESTAMP,
bri_jszk_dqorts      VARCHAR(50),
bri_jszk_alllevel    VARCHAR(50),
bri_jszk_abutmentlevel VARCHAR(50),
bri_jszk_pierlevel   VARCHAR(50),
bri_jszk_subgragelevel VARCHAR(50),
bri_jszk_upconlevel  VARCHAR(50),
bri_jszk_bearlevel   VARCHAR(50),
bri_jszk_byxx        VARCHAR(50),
bri_jszk_czdc        VARCHAR(50),
bri_jszk_nextdate    DATE,
primary key (bri_jszk_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create unique index mdtbl_bridge_jszk_PK on mdtbl_bridge_jszk (
bri_jszk_id ASC
);

create  index bridge_jszk_FK on mdtbl_bridge_jszk (
bri_id ASC
);

create table mdtbl_bridge_linear (
bri_line_id          CHAR(18)                       not null,
material_com_id      CHAR(18),
bri_line_name        VARCHAR(50),
bri_line_width       FLOAT,
bri_line_height      FLOAT,
bri_line_remark      VARCHAR(300),
primary key (bri_line_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_bridge_linear_PK on mdtbl_bridge_linear (
bri_line_id ASC
);

create  index material_com_lines_FK on mdtbl_bridge_linear (
material_com_id ASC
);

create table mdtbl_bridge_member (
member_id            CHAR(18)                       not null,
bridge_children_id   CHAR(18),
compoment_id         CHAR(18),
member_code          VARCHAR(40),
member_remark        VARCHAR(100),
primary key (member_id),
foreign key (bridge_children_id)
      references mdtbl_bridge_children (bridge_children_id),
foreign key (compoment_id)
      references mdtbl_bridge_compoment (compoment_id)
);

create unique index mdtbl_bridge_member_PK on mdtbl_bridge_member (
member_id ASC
);

create  index sonbridge_members_FK on mdtbl_bridge_member (
bridge_children_id ASC
);

create  index compoment_members_FK on mdtbl_bridge_member (
compoment_id ASC
);

create table mdtbl_bridge_pic (
bri_pic_id           CHAR(18)                       not null,
bri_id               CHAR(18),
bri_pic_name         VARCHAR(100),
bri_pic_describe     VARCHAR(300),
bri_pic_url          VARCHAR(100),
primary key (bri_pic_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create unique index mdtbl_bridge_pic_PK on mdtbl_bridge_pic (
bri_pic_id ASC
);

create  index bridge_bridgepics_FK on mdtbl_bridge_pic (
bri_id ASC
);

create table mdtbl_bridge_sbjg (
bri_sbjg_id          CHAR(18)                       not null,
bri_jgjs_id          CHAR(18),
bri_sbjg_holesite    VARCHAR(100),
bri_sbjg_type        VARCHAR(40),
bri_sbjg_length      FLOAT,
bri_sbjg_material    VARCHAR(50),
primary key (bri_sbjg_id),
foreign key (bri_jgjs_id)
      references mdtbl_bridge_jgjs (bri_jgjs_id)
);

create unique index mdtbl_bridge_sbjg_PK on mdtbl_bridge_sbjg (
bri_sbjg_id ASC
);

create  index jgjs_sbjgs_FK on mdtbl_bridge_sbjg (
bri_jgjs_id ASC
);

create unique index mdtbl_bridge_tools_PK on mdtbl_bridge_tools (
tool_id ASC
);

create unique index mdtbl_bridge_type_PK on mdtbl_bridge_type (
type_id ASC
);

create table mdtbl_bridge_xbjg (
bri_xbjg_id          CHAR(18)                       not null,
bri_jgjs_id          CHAR(18),
bri_xbjg_material    VARCHAR(100),
bri_xbjg_dt          VARCHAR(50),
bri_xbjg_type        VARCHAR(50),
bri_xbjg_basistype   VARCHAR(50),
primary key (bri_xbjg_id),
foreign key (bri_jgjs_id)
      references mdtbl_bridge_jgjs (bri_jgjs_id)
);

create unique index mdtbl_bridge_xbjg_PK on mdtbl_bridge_xbjg (
bri_xbjg_id ASC
);

create  index jgjs_xbjgs_FK on mdtbl_bridge_xbjg (
bri_jgjs_id ASC
);

create table mdtbl_bridge_xjgc (
bri_gcjl_id          CHAR(18)                       not null,
bri_id               CHAR(18),
bri_gcjl_begindate   TIMESTAMP,
bri_gcjl_succdate    DATE,
bri_gcjl_buildtype   VARCHAR(50),
bri_gcjl_buildreason VARCHAR(50),
bri_gcjl_projectscope VARCHAR(50),
bri_gcjl_money       VARCHAR(50),
bri_gcjl_pocketbook  VARCHAR(50),
bri_gcjl_qualityevalution VARCHAR(50),
bri_gcjl_buildunit   VARCHAR(50),
bri_gcjl_designunit  VARCHAR(50),
bri_gcjl_constructunit VARCHAR(50),
bri_gcjl_supervationunit VARCHAR(50),
bri_gcjl_note        VARCHAR(100),
primary key (bri_gcjl_id),
foreign key (bri_id)
      references mdtbl_bridge_xzsb (bri_id)
);

create unique index mdtbl_bridge_xjgc_PK on mdtbl_bridge_xjgc (
bri_gcjl_id ASC
);

create  index bridge_xjgc_FK on mdtbl_bridge_xjgc (
bri_id ASC
);

create unique index mdtbl_bridge_xzsb_PK on mdtbl_bridge_xzsb (
bri_id ASC
);

create  index "project-bridges_FK" on mdtbl_bridge_xzsb (
prj_id ASC
);

create  index bridge_jgjs2_FK on mdtbl_bridge_xzsb (
bri_jgjs_id ASC
);

create  index bridge_dazl2_FK on mdtbl_bridge_xzsb (
bri_dazl_id ASC
);

create table mdtbl_cableforce (
cableforce_item_id   CHAR(18)                       not null,
material_com_id      CHAR(18),
cableforce_d_unit    VARCHAR(50),
cableforce_d_value   FLOAT,
primary key (cableforce_item_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_cableforce_PK on mdtbl_cableforce (
cableforce_item_id ASC
);

create  index material_com_cableforces_FK on mdtbl_cableforce (
material_com_id ASC
);

create table mdtbl_chloridion (
chlo_item_id         CHAR(18)                       not null,
material_com_id      CHAR(18),
chlo_exper_id        VARCHAR(50),
chlo_volume          FLOAT,
chlo_burette_data    FLOAT,
chlo_potential       FLOAT,
chlo_pd              FLOAT,
chlo_pre_volume      FLOAT,
chlo_micro_com1      VARCHAR(50),
chlo_micro_com2      VARCHAR(50),
chlo_last_volume     FLOAT,
chlo_concentration   FLOAT,
chlo_remark          VARCHAR(200),
primary key (chlo_item_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_chloridion_PK on mdtbl_chloridion (
chlo_item_id ASC
);

create  index material_com_chloridions_FK on mdtbl_chloridion (
material_com_id ASC
);

create table mdtbl_company (
com_id               CHAR(18)                       not null,
com_name             VARCHAR(50),
com_describe         VARCHAR(1024),
com_url              VARCHAR(200),
com_address          VARCHAR(100),
com_header           VARCHAR(30),
com_phone            CHAR(12),
com_logo_url         VARCHAR(200),
com_ip               CHAR(15),
com_tel              CHAR(12),
com_linkman          VARCHAR(30),
com_linkman_tel      CHAR(12),
com_qq               VARCHAR(15),
com_cert_rank        VARCHAR(100),
com_cert_code        VARCHAR(100),
com_cert_no          VARCHAR(100),
com_fax              VARCHAR(20),
primary key (com_id)
);

create unique index mdtbl_company_PK on mdtbl_company (
com_id ASC
);

create table mdtbl_con_carb_items (
con_carb_item_id     CHAR(18)                       not null,
material_com_id      CHAR(18),
con_carb_unit_name   VARCHAR(50),
con_carb_ckpt_id     VARCHAR(50),
con_carb_ckpt1       FLOAT,
con_carb_ckpt2       FLOAT,
con_carb_ckpt3       FLOAT,
con_carb_remark      VARCHAR(200),
primary key (con_carb_item_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_con_carb_items_PK on mdtbl_con_carb_items (
con_carb_item_id ASC
);

create  index material_com_carbItems_FK on mdtbl_con_carb_items (
material_com_id ASC
);

create table mdtbl_con_streng_date (
csd_id               CHAR(18)                       not null,
con_streng_id        CHAR(18),
csd_item1            FLOAT,
csd_item2            FLOAT,
csd_item3            FLOAT,
csd_item4            FLOAT,
csd_item5            FLOAT,
csd_item6            FLOAT,
csd_item7            FLOAT,
csd_item8            FLOAT,
csd_item9            FLOAT,
csd_item10           FLOAT,
csd_item11           FLOAT,
csd_item12           FLOAT,
csd_item13           FLOAT,
csd_item14           FLOAT,
csd_item15           FLOAT,
csd_item16           FLOAT,
csd_zone             VARCHAR(50),
primary key (csd_id),
foreign key (con_streng_id)
      references mdtbl_constreng_test (con_streng_id)
);

create unique index mdtbl_con_streng_date_PK on mdtbl_con_streng_date (
csd_id ASC
);

create  index con_streng_dates_FK on mdtbl_con_streng_date (
con_streng_id ASC
);

create table mdtbl_constr_resist_item (
con_resist_item_id   CHAR(10)                       not null,
material_com_id      CHAR(18),
resist_zone          VARCHAR(30),
resist_value         VARCHAR(50),
resist_temp          VARCHAR(30),
resist_remark        VARCHAR(100),
primary key (con_resist_item_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_constr_resist_item_PK on mdtbl_constr_resist_item (
con_resist_item_id ASC
);

create  index material_com_resists_FK on mdtbl_constr_resist_item (
material_com_id ASC
);

create unique index mdtbl_constreng_test_PK on mdtbl_constreng_test (
con_streng_id ASC
);

create  index bridge_con_strengs_FK on mdtbl_constreng_test (
bridge_children_id ASC
);

create unique index mdtbl_daily_detection_PK on mdtbl_daily_detection (
daily_app_id ASC
);

create  index bridge_daily_detections_FK on mdtbl_daily_detection (
bridge_children_id ASC
);

create unique index mdtbl_deal_pic_PK on mdtbl_deal_pic (
deal_pic_id ASC
);

create  index deal_pic_daily_dise_FK on mdtbl_deal_pic (
recip_disease_id ASC
);

create table mdtbl_department (
d_id                 CHAR(18)                       not null,
com_id               CHAR(18),
d_name               VARCHAR(50),
d_introduce          VARCHAR(500),
d_mail               VARCHAR(30),
d_contact            VARCHAR(20),
d_header             VARCHAR(20),
d_dphone             CHAR(12),
d_cphone             CHAR(12),
d_tel                CHAR(12),
d_address            VARCHAR(100),
d_postcode           CHAR(6),
d_status             SMALLINT,
primary key (d_id),
foreign key (com_id)
      references mdtbl_company (com_id)
);

create unique index mdtbl_department_PK on mdtbl_department (
d_id ASC
);

create  index company_departments_FK on mdtbl_department (
com_id ASC
);

create table mdtbl_detection_deduct (
detection_id         VARCHAR(18),
detection_max_scale  INTEGER,
detection_cur_scale  INTEGER,
detection_deduct_value FLOAT
);

create table mdtbl_dis_scale (
scale_id             CHAR(18)                       not null,
bcdi_id              CHAR(10),
scale_keys           VARCHAR(50),
scale_min            FLOAT,
scale_max            FLOAT,
scale_unit           VARCHAR(30),
con_con              SMALLINT,
primary key (scale_id),
foreign key (bcdi_id)
      references mdtbl_bri_com_dis_info (bcdi_id)
);

create unique index mdtbl_dis_scale_PK on mdtbl_dis_scale (
scale_id ASC
);

create  index bcdi_disranks_FK on mdtbl_dis_scale (
bcdi_id ASC
);

create table mdtbl_dise_statistics (
dise_stas_id         CHAR(18)                       not null,
project_id           CHAR(18),
bridge_id            CHAR(18),
sonbridge_id         CHAR(18),
project_name         VARCHAR(150),
bridge_name          VARCHAR(150),
bri_child_name       VARCHAR(50),
stru_name            VARCHAR(50),
comp_name            VARCHAR(50),
dise_name            VARCHAR(50),
dise_scale           INTEGER,
dise_result          VARCHAR(500),
result_man           VARCHAR(50),
result_time          DATE,
primary key (dise_stas_id)
);

create unique index mdtbl_dise_statistics_PK on mdtbl_dise_statistics (
dise_stas_id ASC
);

create table mdtbl_emp (
prj_user_id          CHAR(18)                       not null,
prj_id               CHAR(18),
user_position        VARCHAR(50),
job_describe         VARCHAR(300),
job_begintime        TIMESTAMP,
job_endtime          DATE,
job_status           SMALLINT,
job_emp_name         VARCHAR(30),
job_user_id          CHAR(18),
primary key (prj_user_id),
foreign key (prj_id)
      references mdtbl_project (prj_id)
);

create unique index mdtbl_emp_PK on mdtbl_emp (
prj_user_id ASC
);

create  index project_users_FK on mdtbl_emp (
prj_id ASC
);

create table mdtbl_frequency (
frequency_id         CHAR(18)                       not null,
material_com_id      CHAR(18),
frequency_unit       VARCHAR(100),
frequency_position   VARCHAR(20),
frequency_value      FLOAT,
frequency_standard_value FLOAT,
frequency_remark     VARCHAR(1024),
primary key (frequency_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_frequency_PK on mdtbl_frequency (
frequency_id ASC
);

create  index material_com_frequencys_FK on mdtbl_frequency (
material_com_id ASC
);

create table mdtbl_hostrope (
host_rope_id         CHAR(18)                       not null,
material_com_id      CHAR(18),
host_rope_code       VARCHAR(100),
host_rope_width      FLOAT,
host_rope_height     FLOAT,
host_rope_unit       VARCHAR(50),
host_rope_remark     VARCHAR(300),
primary key (host_rope_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_hostrope_PK on mdtbl_hostrope (
host_rope_id ASC
);

create  index material_host_ropes_FK on mdtbl_hostrope (
material_com_id ASC
);

create table mdtbl_levelling_process (
level_pro_id         CHAR(18)                       not null,
material_com_id      CHAR(18),
level_pro_unit       VARCHAR(100),
level_pro_back       FLOAT,
level_pro_before     FLOAT,
level_pro_high       FLOAT,
level_pro_low        FLOAT,
level_pro_recity     FLOAT,
level_pro_recity_high FLOAT,
level_pro_top        FLOAT,
level_pro_distance   FLOAT,
level_pro_remark     VARCHAR(300),
primary key (level_pro_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_levelling_process_PK on mdtbl_levelling_process (
level_pro_id ASC
);

create  index material_com_levelpro_FK on mdtbl_levelling_process (
material_com_id ASC
);

create unique index mdtbl_m_p_config_PK on mdtbl_m_p_config (
m_p_config_id ASC
);

create table mdtbl_material (
fun_id               CHAR(10)                       not null,
fun_name             VARCHAR(50),
fun_ename            VARCHAR(50),
fun_funname          VARCHAR(50),
mat_type             VARCHAR(30),
fun_describe         VARCHAR(400),
primary key (fun_id)
);

create unique index mdtbl_material_PK on mdtbl_material (
fun_id ASC
);

create unique index mdtbl_material_com_PK on mdtbl_material_com (
material_com_id ASC
);

create  index bridge_comdata_FK on mdtbl_material_com (
bridge_children_id ASC
);

create table mdtbl_permission (
per_id               CHAR(18)                       not null,
per_describe         VARCHAR(100),
per_url              VARCHAR(100),
per_abbre            VARCHAR(20),
per_name             VARCHAR(100),
primary key (per_id)
);

create unique index mdtbl_permission_PK on mdtbl_permission (
per_id ASC
);

create unique index mdtbl_pic_PK on mdtbl_pic (
pic_id ASC
);

create  index pics_pics_FK on mdtbl_pic (
pics_id ASC
);

create  index bridge_pics_FK on mdtbl_pic (
bridge_children_id ASC
);

create  index daily_detection_pics_FK on mdtbl_pic (
daily_app_id ASC
);

create  index disease_pics_FK on mdtbl_pic (
recip_disease_id ASC
);

create  index con_streng_pics_FK on mdtbl_pic (
con_streng_id ASC
);

create  index material_com_pics_FK on mdtbl_pic (
material_com_id ASC
);

create unique index mdtbl_pics_PK on mdtbl_pics (
pics_id ASC
);

create  index pictures_pictures_FK on mdtbl_pics (
mdt_pics_id ASC
);

create table mdtbl_pier_vertical (
pier_vertical_id     CHAR(18)                       not null,
material_com_id      CHAR(18),
pier_id              VARCHAR(100),
pier_zs_t_distance   FLOAT,
pier_zs_t_dip        FLOAT,
pier_zs_b_distance   FLOAT,
pier_zs_b_dip        FLOAT,
pier_zb_t_distance   FLOAT,
pier_zb_t_dip        FLOAT,
pier_zb_b_distance   FLOAT,
pier_zb_b_dip        FLOAT,
pier_hl_t_distance   FLOAT,
pier_hl_t_dip        FLOAT,
pier_hl_b_distance   FLOAT,
pier_hl_b_dip        FLOAT,
pier_hr_t_distance   FLOAT,
pier_hr_t_dip        FLOAT,
pier_hr_b_distance   FLOAT,
pier_hr_b_dip        FLOAT,
pier_remark          VARCHAR(200),
detect_unit_name     VARCHAR(50),
primary key (pier_vertical_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_pier_vertical_PK on mdtbl_pier_vertical (
pier_vertical_id ASC
);

create  index material_com_piers_FK on mdtbl_pier_vertical (
material_com_id ASC
);

create unique index mdtbl_project_PK on mdtbl_project (
prj_id ASC
);

create  index project_client_FK on mdtbl_project (
client_id ASC
);

create table mdtbl_quantify_ext (
quantify_ext_id      CHAR(18)                       not null,
recip_disease_id     CHAR(18),
quantify_ext_addkey  VARCHAR(60),
quantify_ext_addvalue VARCHAR(500),
primary key (quantify_ext_id),
foreign key (recip_disease_id)
      references daily_out_disease (recip_disease_id)
);

create unique index mdtbl_quantify_ext_PK on mdtbl_quantify_ext (
quantify_ext_id ASC
);

create  index dailydisease_quantifyexts_FK on mdtbl_quantify_ext (
recip_disease_id ASC
);

create table mdtbl_quantify_info (
quantify_info_id     CHAR(18)                       not null,
recip_disease_id     CHAR(18),
quantify_key         VARCHAR(20),
quantify_unit        VARCHAR(20),
quantify_value       FLOAT,
quantify_describe    VARCHAR(300),
primary key (quantify_info_id),
foreign key (recip_disease_id)
      references daily_out_disease (recip_disease_id)
);

create unique index mdtbl_quantify_info_PK on mdtbl_quantify_info (
quantify_info_id ASC
);

create  index disease_quantifys_FK on mdtbl_quantify_info (
recip_disease_id ASC
);

create table mdtbl_rebar (
rebar_ply_id         CHAR(10)                       not null,
material_com_id      CHAR(18),
rebar_ply_unit       VARCHAR(50),
rebar_ply_uinit_name VARCHAR(50),
rebar_ply_type       VARCHAR(50),
rebar_ply_design     FLOAT,
rebar_ply_fact       FLOAT,
rebar_ply_remark     VARCHAR(200),
primary key (rebar_ply_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_rebar_PK on mdtbl_rebar (
rebar_ply_id ASC
);

create  index material_com_rebar_plys_FK on mdtbl_rebar (
material_com_id ASC
);

create table mdtbl_rebar_corrosion (
rebar_corr_id        CHAR(10)                       not null,
material_com_id      CHAR(18),
rebar_corr_unit      VARCHAR(50),
test_method          VARCHAR(50),
pt_data1             FLOAT,
pt_data2             FLOAT,
pt_data3             FLOAT,
pt_data4             FLOAT,
pt_data5             FLOAT,
pt_data6             FLOAT,
pt_data7             FLOAT,
pt_data8             FLOAT,
pt_data9             FLOAT,
pt_data10            FLOAT,
pt_data11            FLOAT,
pt_data12            FLOAT,
pt_data13            FLOAT,
pt_data14            FLOAT,
pt_data15            FLOAT,
pt_data16            FLOAT,
pt_data17            FLOAT,
pt_data18            FLOAT,
pt_data19            FLOAT,
pt_data20            FLOAT,
rebar_corr_remark    VARCHAR(200),
primary key (rebar_corr_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_rebar_corrosion_PK on mdtbl_rebar_corrosion (
rebar_corr_id ASC
);

create  index material_rebar_pts_FK on mdtbl_rebar_corrosion (
material_com_id ASC
);

create table mdtbl_riverbed (
riverbed_item_id     CHAR(18)                       not null,
material_com_id      CHAR(18),
riverbed_span_pier_code VARCHAR(50),
riverbed_detect_unit VARCHAR(50),
riverbed_rp_depth    FLOAT,
riverbed_dorect      VARCHAR(50),
riverbed_remark      VARCHAR(100),
primary key (riverbed_item_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_riverbed_PK on mdtbl_riverbed (
riverbed_item_id ASC
);

create  index material_com_riverbeds_FK on mdtbl_riverbed (
material_com_id ASC
);

create table mdtbl_role (
role_id              CHAR(18)                       not null,
role_describe        VARCHAR(100),
role_name            VARCHAR(30),
role_status          SMALLINT,
primary key (role_id)
);

create unique index mdtbl_role_PK on mdtbl_role (
role_id ASC
);

create table mdtbl_structure (
stru_id              CHAR(18)                       not null,
material_com_id      CHAR(18),
stru_number          CHAR(18),
stru_unit            VARCHAR(50),
stru_value           FLOAT,
stru_remark          VARCHAR(300),
primary key (stru_id),
foreign key (material_com_id)
      references mdtbl_material_com (material_com_id)
);

create unique index mdtbl_structure_PK on mdtbl_structure (
stru_id ASC
);

create  index materail_com_structures_FK on mdtbl_structure (
material_com_id ASC
);

create table mdtbl_t_value (
t_value_id           CHAR(18)                       not null,
compnonet_amount     INTEGER,
t_value              FLOAT,
primary key (t_value_id)
);

create unique index mdtbl_t_value_PK on mdtbl_t_value (
t_value_id ASC
);

create table mdtbl_terminology (
ter_id               CHAR(10)                       not null,
ter_name             VARCHAR(30),
ter_ename            VARCHAR(40),
ter_discribe         VARCHAR(300),
primary key (ter_id)
);

create unique index mdtbl_terminology_PK on mdtbl_terminology (
ter_id ASC
);

create table mdtbl_user (
u_id                 CHAR(18)                       not null,
role_id              CHAR(18),
d_id                 CHAR(18),
u_name               VARCHAR(50),
u_title              VARCHAR(50),
u_number             VARCHAR(50),
u_phone              CHAR(12),
u_login_name         VARCHAR(50),
u_password           VARCHAR(128),
u_status             INTEGER,
u_remark             VARCHAR(200),
u_qq                 CHAR(15),
u_mail               VARCHAR(50),
u_sex                CHAR(2),
u_address            VARCHAR(100),
u_position           VARCHAR(50),
u_telephone          CHAR(12),
u_birthday           TIMESTAMP,
primary key (u_id),
foreign key (d_id)
      references mdtbl_department (d_id),
foreign key (role_id)
      references mdtbl_role (role_id)
);

create unique index mdtbl_user_PK on mdtbl_user (
u_id ASC
);

create  index department_users_FK on mdtbl_user (
d_id ASC
);

create  index role_users_FK on mdtbl_user (
role_id ASC
);

create table mdtbl_user_pics (
upic_id              CHAR(18)                       not null,
u_id                 CHAR(18),
upic_url             VARCHAR(100),
upic_title           VARCHAR(100),
upic_describe        VARCHAR(200),
primary key (upic_id),
foreign key (u_id)
      references mdtbl_user (u_id)
);

create unique index mdtbl_user_pics_PK on mdtbl_user_pics (
upic_id ASC
);

create  index user_upics_FK on mdtbl_user_pics (
u_id ASC
);

create table roles_permissions (
role_id              CHAR(18)                       not null,
per_id               CHAR(18)                       not null,
primary key (role_id, per_id),
foreign key (role_id)
      references mdtbl_role (role_id),
foreign key (per_id)
      references mdtbl_permission (per_id)
);

create unique index roles_permissions_PK on roles_permissions (
role_id ASC,
per_id ASC
);

create  index roles_permissions_FK on roles_permissions (
role_id ASC
);

create  index roles_permissions2_FK on roles_permissions (
per_id ASC
);

