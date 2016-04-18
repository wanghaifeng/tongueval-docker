--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE IF EXISTS ONLY public.question DROP CONSTRAINT IF EXISTS fkba823be63b4ebc2e;
ALTER TABLE IF EXISTS ONLY public.sec_group_authority DROP CONSTRAINT IF EXISTS fka6397595b9df9fa9;
ALTER TABLE IF EXISTS ONLY public.sec_group_authority DROP CONSTRAINT IF EXISTS fka6397595818ef9a9;
ALTER TABLE IF EXISTS ONLY public.survey_definition_page DROP CONSTRAINT IF EXISTS fk93904b167fc58f7d;
ALTER TABLE IF EXISTS ONLY public.data_set_item DROP CONSTRAINT IF EXISTS fk76b325c5d92930c;
ALTER TABLE IF EXISTS ONLY public.question_row_label DROP CONSTRAINT IF EXISTS fk724b5f36734621c8;
ALTER TABLE IF EXISTS ONLY public.question_column_label DROP CONSTRAINT IF EXISTS fk6f409084734621c8;
ALTER TABLE IF EXISTS ONLY public.question_option DROP CONSTRAINT IF EXISTS fk6e1e3aee734621c8;
ALTER TABLE IF EXISTS ONLY public.sec_user_department DROP CONSTRAINT IF EXISTS fk5a0d4058cabaa1ab;
ALTER TABLE IF EXISTS ONLY public.sec_user_department DROP CONSTRAINT IF EXISTS fk5a0d405840ac9ec8;
ALTER TABLE IF EXISTS ONLY public.invitation DROP CONSTRAINT IF EXISTS fk473f77997fc58f7d;
ALTER TABLE IF EXISTS ONLY public.survey_template DROP CONSTRAINT IF EXISTS fk45b9fbbf27b88d48;
ALTER TABLE IF EXISTS ONLY public.surveydefinition_reminders_daily_port_schedule DROP CONSTRAINT IF EXISTS fk3e4fc55f7fc58f7d;
ALTER TABLE IF EXISTS ONLY public.surveydefinition_reminders_daily_port_schedule DROP CONSTRAINT IF EXISTS fk3e4fc55f7d6911ac;
ALTER TABLE IF EXISTS ONLY public.sec_user_group DROP CONSTRAINT IF EXISTS fk3d8d6db9cabaa1ab;
ALTER TABLE IF EXISTS ONLY public.sec_user_group DROP CONSTRAINT IF EXISTS fk3d8d6db9b9df9fa9;
ALTER TABLE IF EXISTS ONLY public.sec_user_survey_definition DROP CONSTRAINT IF EXISTS fk3c5b1792cabaa1ab;
ALTER TABLE IF EXISTS ONLY public.sec_user_survey_definition DROP CONSTRAINT IF EXISTS fk3c5b17927fc58f7d;
ALTER TABLE IF EXISTS ONLY public.survey_definition DROP CONSTRAINT IF EXISTS fk34f9a75840ac9ec8;
ALTER TABLE IF EXISTS ONLY public.velocity_template DROP CONSTRAINT IF EXISTS velocity_template_template_name_key;
ALTER TABLE IF EXISTS ONLY public.velocity_template DROP CONSTRAINT IF EXISTS velocity_template_pkey;
ALTER TABLE IF EXISTS ONLY public.surveydefinition_reminders_daily_port_schedule DROP CONSTRAINT IF EXISTS surveydefinition_reminders_daily_port_schedule_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_template DROP CONSTRAINT IF EXISTS survey_template_pkey;
ALTER TABLE IF EXISTS ONLY public.survey DROP CONSTRAINT IF EXISTS survey_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_document DROP CONSTRAINT IF EXISTS survey_document_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_definition DROP CONSTRAINT IF EXISTS survey_definition_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_definition_page DROP CONSTRAINT IF EXISTS survey_definition_page_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_data_40 DROP CONSTRAINT IF EXISTS survey_data_40_pkey;
ALTER TABLE IF EXISTS ONLY public.survey_data_2 DROP CONSTRAINT IF EXISTS survey_data_2_pkey;
ALTER TABLE IF EXISTS ONLY public.sector DROP CONSTRAINT IF EXISTS sector_pkey;
ALTER TABLE IF EXISTS ONLY public.sector DROP CONSTRAINT IF EXISTS sector_name_key;
ALTER TABLE IF EXISTS ONLY public.sec_user_survey_definition DROP CONSTRAINT IF EXISTS sec_user_survey_definition_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_user DROP CONSTRAINT IF EXISTS sec_user_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_user DROP CONSTRAINT IF EXISTS sec_user_login_key;
ALTER TABLE IF EXISTS ONLY public.sec_user_group DROP CONSTRAINT IF EXISTS sec_user_group_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_user DROP CONSTRAINT IF EXISTS sec_user_email_key;
ALTER TABLE IF EXISTS ONLY public.sec_user_department DROP CONSTRAINT IF EXISTS sec_user_department_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_password_reset_request DROP CONSTRAINT IF EXISTS sec_password_reset_request_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_group DROP CONSTRAINT IF EXISTS sec_group_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_group DROP CONSTRAINT IF EXISTS sec_group_name_key;
ALTER TABLE IF EXISTS ONLY public.sec_group_authority DROP CONSTRAINT IF EXISTS sec_group_authority_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_authority DROP CONSTRAINT IF EXISTS sec_authority_pkey;
ALTER TABLE IF EXISTS ONLY public.sec_authority DROP CONSTRAINT IF EXISTS sec_authority_name_key;
ALTER TABLE IF EXISTS ONLY public.regular_expression DROP CONSTRAINT IF EXISTS regular_expression_pkey;
ALTER TABLE IF EXISTS ONLY public.question_row_label DROP CONSTRAINT IF EXISTS question_row_label_pkey;
ALTER TABLE IF EXISTS ONLY public.question DROP CONSTRAINT IF EXISTS question_pkey;
ALTER TABLE IF EXISTS ONLY public.question_option DROP CONSTRAINT IF EXISTS question_option_pkey;
ALTER TABLE IF EXISTS ONLY public.question_column_label DROP CONSTRAINT IF EXISTS question_column_label_pkey;
ALTER TABLE IF EXISTS ONLY public.invitation DROP CONSTRAINT IF EXISTS invitation_pkey;
ALTER TABLE IF EXISTS ONLY public.global_settings DROP CONSTRAINT IF EXISTS global_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.department DROP CONSTRAINT IF EXISTS department_pkey;
ALTER TABLE IF EXISTS ONLY public.department DROP CONSTRAINT IF EXISTS department_name_key;
ALTER TABLE IF EXISTS ONLY public.day DROP CONSTRAINT IF EXISTS day_pkey;
ALTER TABLE IF EXISTS ONLY public.day DROP CONSTRAINT IF EXISTS day_day_name_key;
ALTER TABLE IF EXISTS ONLY public.data_set DROP CONSTRAINT IF EXISTS data_set_pkey;
ALTER TABLE IF EXISTS ONLY public.data_set DROP CONSTRAINT IF EXISTS data_set_name_key;
ALTER TABLE IF EXISTS ONLY public.data_set_item DROP CONSTRAINT IF EXISTS data_set_item_pkey;
DROP TABLE IF EXISTS public.velocity_template;
DROP TABLE IF EXISTS public.surveydefinition_reminders_daily_port_schedule;
DROP TABLE IF EXISTS public.survey_template;
DROP TABLE IF EXISTS public.survey_document;
DROP TABLE IF EXISTS public.survey_definition_page;
DROP TABLE IF EXISTS public.survey_definition;
DROP TABLE IF EXISTS public.survey_data_40;
DROP TABLE IF EXISTS public.survey_data_2;
DROP TABLE IF EXISTS public.survey;
DROP TABLE IF EXISTS public.sector;
DROP TABLE IF EXISTS public.sec_user_survey_definition;
DROP TABLE IF EXISTS public.sec_user_group;
DROP TABLE IF EXISTS public.sec_user_department;
DROP TABLE IF EXISTS public.sec_user;
DROP TABLE IF EXISTS public.sec_password_reset_request;
DROP TABLE IF EXISTS public.sec_group_authority;
DROP TABLE IF EXISTS public.sec_group;
DROP TABLE IF EXISTS public.sec_authority;
DROP TABLE IF EXISTS public.regular_expression;
DROP TABLE IF EXISTS public.question_row_label;
DROP TABLE IF EXISTS public.question_option;
DROP TABLE IF EXISTS public.question_column_label;
DROP TABLE IF EXISTS public.question;
DROP TABLE IF EXISTS public.invitation;
DROP SEQUENCE IF EXISTS public.hibernate_sequence;
DROP TABLE IF EXISTS public.global_settings;
DROP TABLE IF EXISTS public.department;
DROP TABLE IF EXISTS public.day;
DROP TABLE IF EXISTS public.data_set_item;
DROP TABLE IF EXISTS public.data_set;
DROP EXTENSION IF EXISTS plpgsql;
DROP SCHEMA IF EXISTS public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: haifeng
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO haifeng;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: haifeng
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: data_set; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE data_set (
    id bigint NOT NULL,
    description character varying(200) NOT NULL,
    name character varying(75) NOT NULL,
    status character varying(255),
    version integer
);


ALTER TABLE data_set OWNER TO tongueval;

--
-- Name: data_set_item; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE data_set_item (
    id bigint NOT NULL,
    item_order integer NOT NULL,
    item_text character varying(250) NOT NULL,
    item_value character varying(75) NOT NULL,
    version integer,
    dataset_id bigint NOT NULL
);


ALTER TABLE data_set_item OWNER TO tongueval;

--
-- Name: day; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE day (
    id bigint NOT NULL,
    day_name character varying(10) NOT NULL,
    version integer
);


ALTER TABLE day OWNER TO tongueval;

--
-- Name: department; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE department (
    id bigint NOT NULL,
    description character varying(2000),
    name character varying(75) NOT NULL,
    version integer
);


ALTER TABLE department OWNER TO tongueval;

--
-- Name: global_settings; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE global_settings (
    id bigint NOT NULL,
    invalid_content_message character varying(500) NOT NULL,
    invalid_file_size_message character varying(500) NOT NULL,
    maximun_file_size integer NOT NULL,
    password_enforcement_message character varying(500) NOT NULL,
    password_regex character varying(255) NOT NULL,
    valid_content_types text NOT NULL,
    valid_image_types text NOT NULL,
    version integer
);


ALTER TABLE global_settings OWNER TO tongueval;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: tongueval
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO tongueval;

--
-- Name: invitation; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE invitation (
    id bigint NOT NULL,
    email character varying(100) NOT NULL,
    first_name character varying(75),
    invitation_email_opened_date timestamp without time zone,
    invitation_email_sent_date timestamp without time zone NOT NULL,
    last_name character varying(75),
    middle_name character varying(75),
    uuid character varying(500) NOT NULL,
    version integer,
    survey_definition_id bigint NOT NULL
);


ALTER TABLE invitation OWNER TO tongueval;

--
-- Name: question; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE question (
    id bigint NOT NULL,
    allow_other_text_box boolean,
    data_set_id bigint,
    date_maximum timestamp without time zone,
    date_minimum timestamp without time zone,
    decimal_maximum numeric(19,2),
    decimal_minimum numeric(19,2),
    direction character varying(255),
    height integer,
    integer_maximum integer,
    integer_minimum integer,
    is_voice_answer boolean DEFAULT false NOT NULL,
    multimedia_link character varying(750),
    question_order smallint NOT NULL,
    question_text character varying(2000) NOT NULL,
    randomize_options boolean,
    regular_expression character varying(250),
    required boolean,
    tip character varying(2000),
    type character varying(255),
    version integer,
    visible boolean,
    width integer,
    survey_definition_page_id bigint NOT NULL,
    reference_answer character varying DEFAULT ''::character varying,
    score double precision DEFAULT 0
);


ALTER TABLE question OWNER TO tongueval;

--
-- Name: question_column_label; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE question_column_label (
    id bigint NOT NULL,
    label character varying(75) NOT NULL,
    column_label_order smallint NOT NULL,
    version integer,
    question_id bigint NOT NULL
);


ALTER TABLE question_column_label OWNER TO tongueval;

--
-- Name: question_option; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE question_option (
    id bigint NOT NULL,
    option_order smallint NOT NULL,
    option_text character varying(250) NOT NULL,
    option_value character varying(50) NOT NULL,
    version integer,
    question_id bigint NOT NULL
);


ALTER TABLE question_option OWNER TO tongueval;

--
-- Name: question_row_label; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE question_row_label (
    id bigint NOT NULL,
    label character varying(75) NOT NULL,
    row_label_order smallint NOT NULL,
    version integer,
    question_id bigint NOT NULL
);


ALTER TABLE question_row_label OWNER TO tongueval;

--
-- Name: regular_expression; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE regular_expression (
    id bigint NOT NULL,
    description character varying(2000),
    name character varying(500) NOT NULL,
    regex character varying(250) NOT NULL,
    version integer
);


ALTER TABLE regular_expression OWNER TO tongueval;

--
-- Name: sec_authority; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_authority (
    id bigint NOT NULL,
    description character varying(500),
    name character varying(75) NOT NULL,
    authority_type character varying(255),
    version integer
);


ALTER TABLE sec_authority OWNER TO tongueval;

--
-- Name: sec_group; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_group (
    id bigint NOT NULL,
    description character varying(500),
    name character varying(75) NOT NULL,
    group_type character varying(255),
    version integer
);


ALTER TABLE sec_group OWNER TO tongueval;

--
-- Name: sec_group_authority; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_group_authority (
    group_id bigint NOT NULL,
    authority_id bigint NOT NULL
);


ALTER TABLE sec_group_authority OWNER TO tongueval;

--
-- Name: sec_password_reset_request; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_password_reset_request (
    id bigint NOT NULL,
    hashkey character varying(500) NOT NULL,
    login character varying(100) NOT NULL,
    request_date timestamp without time zone NOT NULL,
    reset_date timestamp without time zone,
    version integer
);


ALTER TABLE sec_password_reset_request OWNER TO tongueval;

--
-- Name: sec_user; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_user (
    id bigint NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    date_of_birth timestamp without time zone NOT NULL,
    email character varying(100) NOT NULL,
    enabled boolean NOT NULL,
    first_name character varying(75) NOT NULL,
    last_name character varying(75) NOT NULL,
    last_update_date timestamp without time zone,
    login character varying(100) NOT NULL,
    middle_name character varying(75),
    password character varying(500) NOT NULL,
    user_type character varying(255),
    version integer
);


ALTER TABLE sec_user OWNER TO tongueval;

--
-- Name: sec_user_department; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_user_department (
    department_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE sec_user_department OWNER TO tongueval;

--
-- Name: sec_user_group; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_user_group (
    user_id bigint NOT NULL,
    group_id bigint NOT NULL
);


ALTER TABLE sec_user_group OWNER TO tongueval;

--
-- Name: sec_user_survey_definition; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sec_user_survey_definition (
    survey_definition_id bigint NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE sec_user_survey_definition OWNER TO tongueval;

--
-- Name: sector; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE sector (
    id bigint NOT NULL,
    description character varying(200) NOT NULL,
    name character varying(75) NOT NULL,
    version integer
);


ALTER TABLE sector OWNER TO tongueval;

--
-- Name: survey; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey (
    id bigint NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    email character varying(100),
    first_name character varying(75),
    ip_address character varying(45),
    last_name character varying(75),
    last_update_date timestamp without time zone,
    login character varying(100),
    middle_name character varying(75),
    status character varying(255),
    submission_date timestamp without time zone,
    survey_definition_id bigint,
    type_name character varying(75) NOT NULL,
    version integer
);


ALTER TABLE survey OWNER TO tongueval;

--
-- Name: survey_data_2; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_data_2 (
    survey_id bigint NOT NULL,
    p1v boolean,
    p1q1 character varying(5),
    p1q1text character varying(255),
    p1q2 character varying(75),
    p1q3r1c1 character varying(75),
    p1q3r2c1 character varying(75),
    p1q3r3c1 character varying(75),
    p1q3r4c1 character varying(75),
    p1q3r5c1 character varying(75),
    p1q3r6c1 character varying(75),
    p1q3r7c1 character varying(75),
    p1q3r8c1 character varying(75),
    p1q4 character varying(75),
    p1q5 character varying(75),
    p1q6 character varying(5),
    p1q6text character varying(255),
    p1q7 character varying(5),
    p1q7text character varying(255),
    p1q8 character varying(5),
    p1q8text character varying(255),
    p1q9 character varying(75),
    p1q10 character varying(75),
    p1q11 character varying(75),
    p1q12 character varying(75),
    p1q13 character varying(75),
    p1q14 character varying(75),
    p1q15 character varying(75)
);


ALTER TABLE survey_data_2 OWNER TO tongueval;

--
-- Name: survey_data_40; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_data_40 (
    survey_id bigint NOT NULL,
    p1v boolean,
    p1q1 character varying(75),
    p1q2r1c1 character varying(75),
    p1q2r2c1 character varying(75),
    p1q2r3c1 character varying(75),
    p1q2r4c1 character varying(75),
    p1q2r5c1 character varying(75),
    p1q2r6c1 character varying(75),
    p1q2r7c1 character varying(75),
    p1q2r8c1 character varying(75),
    p1q3 character varying(75),
    p1q4 character varying(75)
);


ALTER TABLE survey_data_40 OWNER TO tongueval;

--
-- Name: survey_definition; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_definition (
    id bigint NOT NULL,
    allow_multiple_submissions boolean NOT NULL,
    auto_reminder_last_sent_date timestamp without time zone,
    auto_reminders_day_of_month integer,
    reminders_frequency character varying(255),
    auto_reminders_monthly_occurrence integer,
    auto_reminders_weekly_occurrence integer,
    completed_survey_template character varying(5000) NOT NULL,
    description character varying(2000),
    email_invitation_template character varying(5000) NOT NULL,
    is_public boolean NOT NULL,
    logo oid,
    name character varying(75) NOT NULL,
    send_auto_reminders boolean,
    status character varying(255),
    survey_theme character varying(255),
    version integer,
    department_id bigint NOT NULL
);


ALTER TABLE survey_definition OWNER TO tongueval;

--
-- Name: survey_definition_page; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_definition_page (
    id bigint NOT NULL,
    instructions character varying(2000) NOT NULL,
    page_order smallint NOT NULL,
    page_logicjson oid,
    randomize_questions boolean,
    title character varying(250) NOT NULL,
    version integer,
    survey_definition_id bigint NOT NULL
);


ALTER TABLE survey_definition_page OWNER TO tongueval;

--
-- Name: survey_document; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_document (
    id bigint NOT NULL,
    content oid,
    content_type character varying(250) NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    file_name character varying(50) NOT NULL,
    question_id bigint NOT NULL,
    survey_id bigint NOT NULL,
    version integer
);


ALTER TABLE survey_document OWNER TO tongueval;

--
-- Name: survey_template; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE survey_template (
    id bigint NOT NULL,
    description character varying(200) NOT NULL,
    json_code text NOT NULL,
    name character varying(75) NOT NULL,
    version integer,
    sector_id bigint NOT NULL
);


ALTER TABLE survey_template OWNER TO tongueval;

--
-- Name: surveydefinition_reminders_daily_port_schedule; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE surveydefinition_reminders_daily_port_schedule (
    survey_definition_id bigint NOT NULL,
    day_id bigint NOT NULL
);


ALTER TABLE surveydefinition_reminders_daily_port_schedule OWNER TO tongueval;

--
-- Name: velocity_template; Type: TABLE; Schema: public; Owner: tongueval
--

CREATE TABLE velocity_template (
    id bigint NOT NULL,
    template_definition text NOT NULL,
    template_name character varying(250) NOT NULL,
    template_timestamp timestamp without time zone NOT NULL,
    version integer
);


ALTER TABLE velocity_template OWNER TO tongueval;

--
-- Data for Name: data_set; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: data_set_item; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: day; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO day VALUES (1, 'Monday', 1);
INSERT INTO day VALUES (2, 'Tuesday', 1);
INSERT INTO day VALUES (3, 'Wednesday', 1);
INSERT INTO day VALUES (4, 'Thursday', 1);
INSERT INTO day VALUES (5, 'Friday', 1);
INSERT INTO day VALUES (6, 'Saturday', 1);
INSERT INTO day VALUES (7, 'Sunday', 1);


--
-- Data for Name: department; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO department VALUES (1, '金石成长教育科技', '北京金石成长教育科技有限公司', 0);


--
-- Data for Name: global_settings; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO global_settings VALUES (1, '你上传的文档类型不支持. 请上传有效的文件.', '上传的文件大小错误. 文件不小不能超过10M.', 10, '密码长度应该至少8个有效字符. 需要至少含有一个大写、小写、数字、符号.', '(?=.{8,})(?=.*?[^\\\\w\\\\s])(?=.*?[0-9])(?=.*?[A-Z]).*?[a-z].*', 'image/gif,image/jpeg,image/pjpeg,image/png,image/tiff,application/pdf,application/vnd.oasis.opendocument.text,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.graphics,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-powerpoint,application/vnd.openxmlformats-officedocument.presentationml.presentation,application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'image/gif,image/jpeg,image/pjpeg,image/png,image/tiff', 0);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: tongueval
--

SELECT pg_catalog.setval('hibernate_sequence', 105, true);


--
-- Data for Name: invitation; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: question; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO question VALUES (99, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 4, '<p>答题体会</p>', false, '', false, '', 'SHORT_TEXT_INPUT', 0, true, NULL, 41, NULL, 0);
INSERT INTO question VALUES (53, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 3, '<p>I''m good at sports!</p>', false, '', false, '<p>Repeat the sentence.</p>', 'SHORT_TEXT_INPUT', 1, true, NULL, 41, 'I''m good at sports', 5);
INSERT INTO question VALUES (63, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 6, '<p>看视频，选择正确的答案</p>
<p><video controls="controls" width="640" height="320">
<source src="../../../video.mp4" type="video/mp4" /></video></p>
<p>How many baby lions can you find out in the video clip?</p>
<p>&nbsp;<img src="../../../6-1.png" alt="" width="469" height="313"></p>', false, '', false, '', 'SINGLE_CHOICE_RADIO_BUTTONS', 6, true, NULL, 4, '5', 5);
INSERT INTO question VALUES (64, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 2, '<p>How may dolls does the speaker have?</p>', false, '', false, '', 'SINGLE_CHOICE_DROP_DOWN', 1, true, NULL, 4, '6', 5);
INSERT INTO question VALUES (72, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 7, '<p>What is the relationship of those you have seen in the video?</p>
<p><img src="../../../6-2.png" alt="" width="469" height="313"></p>', false, '', false, '', 'SINGLE_CHOICE_RADIO_BUTTONS', 1, true, NULL, 4, 'A', 5);
INSERT INTO question VALUES (76, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 8, '<p>What is the relationship of those you have seen in the video?</p>
<p>
  <img alt="" height="313" src="../../../6-3.png" width="469" /></p>', false, '', false, '', 'SINGLE_CHOICE_RADIO_BUTTONS', 0, true, NULL, 4, 'C', 5);
INSERT INTO question VALUES (80, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 9, '<p>看图说话，请看图片，并在提示音后用正确的单词或词组描述图片。</p>
<p>
  <img alt="" height="207" src="../../../7-1.png" width="236" /></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 0, true, NULL, 4, 'Bird', 5);
INSERT INTO question VALUES (81, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 10, '<p>看图说话，请看图片，并在提示音后用正确的单词或词组描述图片。</p>
<p><img src="../../../7-2.png" alt="" width="236" height="207"></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 1, true, NULL, 4, 'Monkey', 5);
INSERT INTO question VALUES (82, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 11, '<p>看图说话，请看图片，并在提示音后用正确的单词或词组描述图片。</p>
<p>
  <img alt="" height="130" src="../../../7-3.png" width="219" /></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 0, true, NULL, 4, 'Bus', 5);
INSERT INTO question VALUES (83, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 12, '<p>看图说话，请看图片，并在提示音后用正确的单词或词组描述图片。</p>
<p>
  <img alt="" height="181" src="../../../7-4.png" width="320" /></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 0, true, NULL, 4, 'Sweater', 5);
INSERT INTO question VALUES (84, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 13, '<p>看图说话，请看图片，并在提示音后用正确的单词或词组描述图片。</p>
<p>
  <img alt="" height="185" src="../../../7-5.png" width="309" /></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 0, true, NULL, 4, 'Monster', 5);
INSERT INTO question VALUES (85, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 14, '<p>请听录音，并重述所听到的词汇组合或单句。</p>
<p><audio src="../../../8-1.mp3" controls="controls"></audio></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 1, true, NULL, 4, 'I''m good at sports', 5);
INSERT INTO question VALUES (86, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 15, '<p>请听录音，并重述所听到的词汇组合或单句。</p>
<p><audio src="../../../8-2.mp3" controls="controls"></audio></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 1, true, NULL, 4, 'What do you think about living in a new city', 5);
INSERT INTO question VALUES (42, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 1, '<p>That is the train station.</p>', false, '', false, '<p>请朗读短句，录音并提交</p>', 'SHORT_TEXT_INPUT', 0, true, NULL, 41, 'That is the train station', 5);
INSERT INTO question VALUES (22, false, NULL, NULL, NULL, NULL, NULL, 'HORIZONTAL', NULL, NULL, NULL, false, '', 1, '<p><audio src="../../../listening.mp3" controls="controls"></audio></p>
<p>仔细倾听上面的音频，然后找出问题1和问题2的正确答案：</p>
<p>I have a new___。</p>
<p>A.<img src="../../../1-1.png" alt="" width="156" height="121">B.<img src="../../../1-2.png" alt="" width="148" height="111">C.<img src="../../../1-3.png" alt="" width="216" height="68">D.<img src="../../../1-4.png" alt="" width="110" height="100"></p>', false, '', false, '', 'SINGLE_CHOICE_RADIO_BUTTONS', 8, true, NULL, 4, 'A', 5);
INSERT INTO question VALUES (6, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 5, '<p><strong>请朗读短句并录制。录制结束后点击提交按钮完成答题。</strong></p>
<p><strong>Jack went to library yesterday</strong></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 8, true, NULL, 4, 'Jack went to library yesterday', 5);
INSERT INTO question VALUES (5, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, true, '', 4, '<p><strong>请朗读短句并录制。录制结束后点击提交按钮完成答题。</strong></p>
<p><strong>That is the train station.</strong></p>', false, '', false, '', 'SHORT_TEXT_INPUT', 8, true, NULL, 4, 'That is the train station', 5);
INSERT INTO question VALUES (43, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 2, '<p>1.Learning How to Swim  </p>
<p>During summer holidays, my good friend Chuanchuan ___1___ I went to
  join a swimming class.Before ___2___ only knew how to dog paddle, I
  like a dog falling into the water and trying to swim.  </p>
<p>At the swimming class, my teacher told ___3___ how to do the crawl.
  For the crawl we had to breathe on ___4___ the left and the right
  sides. After that, my teacher taught us how to do backstroke. For
  swimming backstroke, we ___5___ needed to go back in a circular
  motion. My teacher always demonstrated the backstroke first before
  teaching, then we followed ___6___.  </p>
<p>Sometimes, our teacher let us play a game called“catch the ring”.    
   This was how we played it: someone took a rubber ring and threw it
  into the water, then ___7___ dived down in the water and brought it
  back up to the surface. We ___8___ played happily.  Now I know how to
  swim!  </p>
<p>1. A. or    B. and（正确）  C. both  D. all </p>
<p>2. A. I （正确）  B. me    C. us  D. My </p>
<p>3. A. we   B. our  C. us（正确）  D. I  </p>
<p>4. A. both（正确） B. all C. either  D. neither</p>
<p>5. A. arms （正确） B. arm   C. eyes   D. ears </p>
<p>6. A. she  B. he C. his  D. her  （正确）</p>
<p>7. A. us   B. our    C. me  D. we （正确）</p>
<p>8. A. all（正确）  B. either C. neither D. both</p>
<div> </div>', false, '', false, '', 'SHORT_TEXT_INPUT_MATRIX', 0, true, NULL, 41, 'B A C A A D D A', 16);
INSERT INTO question VALUES (7, false, NULL, NULL, NULL, NULL, NULL, 'VERTICAL', NULL, NULL, NULL, false, '', 3, '<p><strong>阅读短文，然后选择合适的单词。</strong></p>
<h2><strong>Learning How to Swim &nbsp;</strong></h2>
<p>During summer holidays, my good friend Chuanchuan ___1___ I went to join a swimming class.Before ___2___ only knew how to dog paddle, I like a dog falling into the water and trying to swim. &nbsp;</p>
<p>At the swimming class, my teacher told ___3___ how to do the crawl. For the crawl we had to breathe on ___4___ the left and the right sides. After that, my teacher taught us how to do backstroke. For swimming backstroke, we ___5___ needed to go back in a circular motion. My teacher always demonstrated the backstroke first before teaching, then we followed ___6___. &nbsp;</p>
<p>Sometimes, our teacher let us play a game called&ldquo;catch the ring&rdquo;. &nbsp; &nbsp; &nbsp;This was how we played it: someone took a rubber ring and threw it into the water, then ___7___ dived down in the water and brought it back up to the surface. We ___8___ played happily. &nbsp;Now I know how to swim! &nbsp;</p>
<p>请从下面的可选项中选择正确答案：</p>
<ol>
<li>A. or &nbsp; &nbsp;B. and &nbsp;C. both &nbsp;D. all&nbsp;</li>
<li>A. I &nbsp; B. me &nbsp; &nbsp;C. us &nbsp;D. My&nbsp;</li>
<li>A. we &nbsp; B. our &nbsp;C. us &nbsp;D. I &nbsp;</li>
<li>A. both B. all C. either &nbsp;D. neither</li>
<li>A. arms &nbsp;B. arm &nbsp; C. eyes &nbsp; D. ears&nbsp;</li>
<li>A. she &nbsp;B. he C. his &nbsp;D. her &nbsp;</li>
<li>A. us &nbsp; B. our &nbsp; &nbsp;C. me &nbsp;D. we&nbsp;</li>
<li>A. all &nbsp;B. either C. neither D. both</li>
</ol>', false, '', false, '', 'SHORT_TEXT_INPUT_MATRIX', 9, true, NULL, 4, 'B A C A A D D A', 16);


--
-- Data for Name: question_column_label; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO question_column_label VALUES (21, '请分别为每个填空位置选择正确的词汇。回答A、B、C或者D', 1, 0, 7);
INSERT INTO question_column_label VALUES (52, '请分别为每个填空位置选择正确的词汇。回答A、B、C或者D', 1, 0, 43);


--
-- Data for Name: question_option; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO question_option VALUES (59, 1, 'A', 'A', 0, 22);
INSERT INTO question_option VALUES (60, 2, 'B', 'B', 0, 22);
INSERT INTO question_option VALUES (61, 3, 'C', 'C', 0, 22);
INSERT INTO question_option VALUES (62, 4, 'D', 'D', 0, 22);
INSERT INTO question_option VALUES (65, 1, '4', '4', 0, 64);
INSERT INTO question_option VALUES (66, 2, '5', '5', 0, 64);
INSERT INTO question_option VALUES (67, 3, '6', '6', 0, 64);
INSERT INTO question_option VALUES (68, 4, '7', '7', 0, 64);
INSERT INTO question_option VALUES (69, 1, '3', '3', 0, 63);
INSERT INTO question_option VALUES (70, 2, '4', '4', 0, 63);
INSERT INTO question_option VALUES (71, 3, '5', '5', 0, 63);
INSERT INTO question_option VALUES (73, 1, '1 brother, 1 sister', 'A', 0, 72);
INSERT INTO question_option VALUES (74, 2, '1 mother, 1 father', 'B', 0, 72);
INSERT INTO question_option VALUES (75, 3, '1 mother, 1 baby', 'C', 0, 72);
INSERT INTO question_option VALUES (77, 1, 'Mothers and babies', 'A', 0, 76);
INSERT INTO question_option VALUES (78, 2, 'Mother and father', 'B', 0, 76);
INSERT INTO question_option VALUES (79, 3, 'Brothers and sisters', 'C', 0, 76);


--
-- Data for Name: question_row_label; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO question_row_label VALUES (12, '1', 1, 0, 7);
INSERT INTO question_row_label VALUES (13, '2', 2, 0, 7);
INSERT INTO question_row_label VALUES (14, '3', 3, 0, 7);
INSERT INTO question_row_label VALUES (15, '4', 4, 0, 7);
INSERT INTO question_row_label VALUES (16, '5', 5, 0, 7);
INSERT INTO question_row_label VALUES (17, '6', 6, 0, 7);
INSERT INTO question_row_label VALUES (18, '7', 7, 0, 7);
INSERT INTO question_row_label VALUES (19, '8', 8, 0, 7);
INSERT INTO question_row_label VALUES (44, '1', 1, 0, 43);
INSERT INTO question_row_label VALUES (45, '2', 2, 0, 43);
INSERT INTO question_row_label VALUES (46, '3', 3, 0, 43);
INSERT INTO question_row_label VALUES (47, '4', 4, 0, 43);
INSERT INTO question_row_label VALUES (48, '5', 5, 0, 43);
INSERT INTO question_row_label VALUES (49, '6', 6, 0, 43);
INSERT INTO question_row_label VALUES (50, '7', 7, 0, 43);
INSERT INTO question_row_label VALUES (51, '8', 8, 0, 43);


--
-- Data for Name: regular_expression; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO regular_expression VALUES (1, 'First Name Validation', 'First Name', '^[0-9a-zA-Z\\.\\-\\, ]{0,75}$', 0);
INSERT INTO regular_expression VALUES (2, 'Last Name Validation', 'Last Name', '^[0-9a-zA-Z\\.\\-\\, ]{0,75}$', 0);
INSERT INTO regular_expression VALUES (3, 'Email Validation', 'Email', '^([0-9a-zA-Z]([-.\\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\\w]*[0-9a-zA-Z]\\.)+[a-zA-Z]{0,9})$', 0);
INSERT INTO regular_expression VALUES (4, 'Address Validation', 'Address', '^[0-9a-zA-Z\\.\\-,# ]{0,100}$', 0);
INSERT INTO regular_expression VALUES (5, 'Zip Code Validation', 'Zip Code', '^\\d{5}$|^$', 0);
INSERT INTO regular_expression VALUES (6, 'US Phone Number Validation', 'US Phone Number', '^\\d{3}-\\d{3}-\\d{4}$|^$', 0);
INSERT INTO regular_expression VALUES (7, 'Social Security Number Validation', 'Social Security Number', '^(\\d{3}-\\d{2}-\\d{4}){1,12}$|^$', 0);


--
-- Data for Name: sec_authority; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_authority VALUES (1, 'Highest level access without any restrictions', 'ROLE_ADMIN', 'I', 0);
INSERT INTO sec_authority VALUES (2, 'This role allows a user to manage surveys.', 'ROLE_SURVEY_ADMIN', 'I', 0);
INSERT INTO sec_authority VALUES (3, 'This role allows a user to fill a survey ', 'ROLE_SURVEY_PARTICIPANT', 'E', 0);


--
-- Data for Name: sec_group; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_group VALUES (1, '完全权限', '管理员', 'I', 0);
INSERT INTO sec_group VALUES (2, '测评管理', '测评管理', 'I', 0);
INSERT INTO sec_group VALUES (3, '测评参与者', '测评参与', 'E', 0);


--
-- Data for Name: sec_group_authority; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_group_authority VALUES (1, 1);
INSERT INTO sec_group_authority VALUES (2, 2);
INSERT INTO sec_group_authority VALUES (3, 3);


--
-- Data for Name: sec_password_reset_request; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: sec_user; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_user VALUES (3, '2016-02-23 17:52:16.604', '1987-02-16 00:00:00', 'client@notexist.com', true, 'Tester', 'Wang', '2016-02-24 22:54:34.356', 'nethub@163.com', '', '08ef074fe1c0d21740ae3207464a919a8fc3d1956ba361f47104a4b546333001', 'E', 1);
INSERT INTO sec_user VALUES (1, '2012-10-21 14:44:53', '1975-01-01 00:00:00', 'admin@notexist.com', true, 'admin', 'admin', '2016-02-29 15:28:23.324', 'admin', 'admin', '08ef074fe1c0d21740ae3207464a919a8fc3d1956ba361f47104a4b546333001', 'I', 3);


--
-- Data for Name: sec_user_department; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: sec_user_group; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_user_group VALUES (3, 3);
INSERT INTO sec_user_group VALUES (1, 1);


--
-- Data for Name: sec_user_survey_definition; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO sec_user_survey_definition VALUES (2, 3);
INSERT INTO sec_user_survey_definition VALUES (40, 3);


--
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: survey; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO survey VALUES (104, '2016-03-13 12:30:32.93', 'client@notexist.com', 'Tester', '0:0:0:0:0:0:0:1', 'Wang', '2016-03-13 12:32:11.136', 'client@notexist.com', '', 'S', '2016-03-13 12:32:11.136', 2, '英语语言语义测评-演示系统', 1);
INSERT INTO survey VALUES (105, '2016-03-16 16:08:33.284', 'client@notexist.com', 'Tester', '0:0:0:0:0:0:0:1', 'Wang', '2016-03-16 16:08:33.284', 'client@notexist.com', '', 'I', NULL, 40, '语音测评-题型测试', 0);


--
-- Data for Name: survey_data_2; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO survey_data_2 VALUES (104, true, 'A', NULL, '6', 'A', '', 'C', '', '', '', '', '', '', '', '5', NULL, 'A', NULL, 'C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: survey_data_40; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO survey_data_40 VALUES (105, true, 'NEW AT IS THE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MONKEY', NULL);


--
-- Data for Name: survey_definition; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO survey_definition VALUES (2, true, NULL, 1, 'WEEKLY', 1, 1, '<p>你的测评答案已经提交，非常感谢使用本测评平台。</p>', '<ul>
<li>听力：2题，2 x 5 = 10分</li>
<li>视频问答：</li>
<li>口语：</li>
<li>朗读：</li>
<li>听读：</li>
<li>完形填空：</li>
<li>用时、表达等：</li>
</ul>', '<p>欢迎 ${user_name}. 请点击 ''''测评'''' 标签开始答题.</p>', false, NULL, '英语语言语义测评-演示系统', false, 'P', 'DEEP_CHESTNUT', 7, 1);
INSERT INTO survey_definition VALUES (40, true, NULL, 1, 'WEEKLY', 1, 1, '<p>已经提交</p>', '', '<p>欢迎 ${user_name} 访问测评系统. </p>', false, NULL, '语音测评-题型测试', false, 'P', 'STANDARD', 10, 1);


--
-- Data for Name: survey_definition_page; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO survey_definition_page VALUES (4, '', 1, NULL, false, '题型结构及评分规则', 2, 2);
INSERT INTO survey_definition_page VALUES (41, '', 1, NULL, false, '语音语义测试', 0, 40);


--
-- Data for Name: survey_document; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: survey_template; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: surveydefinition_reminders_daily_port_schedule; Type: TABLE DATA; Schema: public; Owner: tongueval
--



--
-- Data for Name: velocity_template; Type: TABLE DATA; Schema: public; Owner: tongueval
--

INSERT INTO velocity_template VALUES (1, '<html><body><p><strong>Per your request below is your Login</strong></p><p>Login: ${user_login}</p></body></html>', 'ForgotLogin', '2012-10-21 14:44:53', 0);
INSERT INTO velocity_template VALUES (2, '<html><body><p>A password change request for your account has been made. If you have made this request please use the link below to change your password. If not please ignore this email.</p><p>${reset_password_link}</p></body></html>', 'ForgotPassword', '2012-10-21 14:44:53', 0);
INSERT INTO velocity_template VALUES (3, '<html><body><h1 id="main_section">Frequently Asked Questions</h1>
<!-- Survey creation FAQs -->
<h2>Survey Process</h2>
<ul>
<li><a href="#survey_sec1">How do I create surveys?</a></li>
<li><a href="#survey_sec2">What are the two templates that appear below the description box in the create new survey window?</a></li>
<li><a href="#survey_sec3">How do I make questions require an answer before proceeding any further into the survey?</a></li>
<li><a href="#survey_sec4">How do I attach logos to surveys?</a></li>
<li><a href="#survey_sec5">What are the steps to fill out surveys?</a></li>
<li><a href="#survey_sec6">How do I change the theme or color of surveys?</a></li>
</ul>
<!-- Logic FAQs -->
<h2>Logic Features</h2>
<ul>
<li><a href="#logic_sec1">What does the randomize questions and options feature do?</a></li>
<li><a href="#logic_sec2">How do I apply branching to questions and answers?</a></li>
<li><a href="#logic_sec3">What is the piping of answers feature and how do I use it?</a></li>
</ul>
<!-- Statistics FAQs -->
<h2>Data Collection</h2>
<ul>
<li><a href="#data_sec1">How do I download copies of completed surveys?</a></li>
<li><a href="#data_sec2">How can I view survey data/statistics?</a></li>
<li><a href="#data_sec3">What options are available for exporting survey statistics?</a></li>
</ul>
<!-- Security FAQs -->
<h2>Security</h2>
<ul>
<li><a href="#security_sec1">How do I create users?</a></li>
<li><a href="#security_sec2">Where is the option to make surveys private or public?</a></li>
<li><a href="#security_sec3">When I try to log in I am getting a message that states Your login attempt was not successful, try again. Reason: User is disabled. Why is this occurring?</a></li>
</ul>
<!-- Other FAQs -->
<h2>Other Features</h2>
<ul>
<li><a href="#other_sec1">How do I export and import surveys?</a></li>
<li><a href="#other_sec2">What are datasets?</a></li>
<li><a href="#other_sec3">How do I send out survey invitations to a group of participants?</a></li>
<li><a href="#other_sec4">What are masks?</a></li>
</ul>
<!-- survey_sec1 -->
<h2 id="survey_sec1">How do I create surveys?</h2>
<p style="color: black;">In order to create surveys you must either have administrator or survey administrator privileges. Follow these steps to create a survey:</p>
<ol style="padding: 0em 4em;">
<li>Go to the Settings tab and click on Surveys.</li>
<li>On the left panel click on Add new Survey.</li>
<li>Select a department and type in a name for the survey. Fill out any of the other optional fields on the page and click on Save.</li>
<li>Click on Add new Page from the left panel or from the bottom right corner.</li>
<li>Select an order, enter a title for the survey page, include any additional instructions, and determine whether to randomize the questions or not.</li>
<li>At the bottom right corner click on add question.</li>
<li>Choose a position order, question type, and type in the question text. Fill out any other fields if necessary and click on Save.</li>
<li>Depending on the question type additional fields may need to be defined:<ol type="a">
<li>An update options link appears for single choice drop down, multiple choice checkboxes, and single choice radio button questions types</li>
<li>The update columns and update rows links appears for all matrix questions</li>
</ol></li>
<li>Add more questions to the page and survey pages if necessary.</li>
<li>After building the survey click on Publish Survey from the panel on the left to publish or Export survey to download it.</li>
</ol><!-- survey_sec2 -->
<h2 id="survey_sec2">What are the two templates that appear below the description box in the create new survey window?</h2>
<p style="color: black;">The first template, Email Invitation Template, contains the message that will be displayed to the email recipients for email invitation surveys. The second template, Completed Survey Template, is the message displayed to participants after completing a survey. Both of these templates can be modified with custom messages.</p>
<!-- survey_sec3 -->
<h2 id="survey_sec3">How do I make questions require an answer before proceeding any further into the survey?</h2>
<p style="color: black;">While creating or updating questions there is a checkbox option labeled as Mandatory. Enabling this option will prevent participants from advancing to the next page unless an answer is provided.</p>
<!-- survey_sec4 -->
<h2 id="survey_sec4">How do I attach logos to surveys?</h2>
<p style="color: black;">Adding customized or company logos to surveys can be accomplished during the creation process or after they have been published. Follow these steps to add a logo:</p>
<ol style="padding: 0em 4em;">
<li>From the top menu bar go to Settings and click on Surveys.</li>
<li>Select a survey to add the logo and click on the Show Survey link under the Actions column.</li>
<li>From the left panel click on Update Logo.</li>
<li>Click on the Choose File button, select an image (supported types include png, gif, bmp, and jpeg), and click on Upload.</li>
</ol><!-- survey_sec5 -->
<h2 id="survey_sec5">What are the steps to fill out surveys?</h2>
<p style="color: black;">Once a survey has been published it is now ready to be filled out by participants. If the survey has been made public then registering participants is not necessary. However, if the survey has been made private then an administrator needs to assign it to the appropriate participants.</p>
<ol style="padding: 0em 4em;">
<li>Log in to the external site.</li>
<li>Locate the survey to be filled and click on the Fill Survey link.</li>
<li>If the survey is being filled out for the first time then a new survey will automatically be generated. Otherwise, click on the Create New Survey link located on the bottom right corner of the page.</li>
<li>After completing a page click on Next to proceed to the next page.</li>
<li>Review the survey on the final page and click on Submit to finish.</li>
</ol><!-- survey_sec6 -->
<h2 id="survey_sec6">How do I change the theme or color of surveys?</h2>
<p style="color: black;">The color and overall look of surveys may be modified by selecting a different theme in the Create new Survey or Update Survey windows. Clicking on the Lookup Theme link located at the right of the theme options will display a preview of each theme.</p>
<!-- logic_sec1 -->
<h2 id="logic_sec1">What does the randomize questions and options feature do?</h2>
<p style="color: black;">The randomize feature sorts a list of questions and answers in a randomized order. This allows for a survey to display questions and options in a different order each time. The randomization feature is found in the create/update survey page window and in the create/update questions window.</p>
<!-- logic_sec2 -->
<h2 id="logic_sec2">How do I apply branching to questions and answers?</h2>
<p style="color: black;">Branching is a method for skipping irrelevant questions based upon answer entries. While filling out surveys, there may be instances where particular answers require a participant to skip to specific questions or sections witin the survey. To add branching logic to questions follow these steps:</p>
<ol style="padding: 0em 4em;">
<li>Choose a survey page containing the questions to add the branching logic.</li>
<li>Click on the Edit branch and skip logic icon located inside the page header.</li>
<li>Select the page to skip to in the Go To drop down list.</li>
<li>In the When section choose a condition to be applied.</li>
<li>Enable the questions to apply the logic to.</li>
<li>Under the Values section, pick the answers that will activate the branch.</li>
<li>Click on Save.</li>
</ol><!-- logic_sec3 -->
<h2 id="logic_sec3">What is the piping of answers feature and how do I use it?</h2>
<p style="color: black;">The piping feature allows selected answers from questions to be incorporated into other questions. To utilize te piping functionality a parameter must be added to the question text. The parameter consists of a dollar sign, opening curly brace, page number, question number, and closing curly brace, written in that order. So for example, if we want to use te answer from question 4 on page 2, we would add the following parameter inside the current question text: ${p2q4}.</p>
<p style="color: black;"><em>Note: The piping feature is only operational by referencing answers from preceding pages. Attempting to use an answer from a future page will not work.</em></p>
<!-- data_sec1 -->
<h2 id="data_sec1">How do I download copies of completed surveys?</h2>
<p style="color: black;">Survey entries may be downloaded as PDF files for viewing, printing, and keeping copies of them. To download survey entries do the following:</p>
<ol style="padding: 0em 4em;">
<li>Go to Survey Entries at the top menu bar and click on List.</li>
<li>Select a survey and click on Show Entries.</li>
<li>Click on the Show Survey link associated with the survey to be downloaded.</li>
<li>On the left panel click on the Export to PDF tab.</li>
<li>The survey is displayed as a PDF and can be printed or saved.</li>
</ol><!-- data_sec2 -->
<h2 id="data_sec2">How can I view survey data/statistics?</h2>
<p style="color: black;">Statistics may be viewed in the application. Questions, separated into their respective pages, are displayed in the left panel while the data is shown in the right panel. Survey statistics may be viewed by doing the following:</p>
<ol style="padding: 0em 4em;">
<li>Click on the Statistics tab located on the top menu bar.</li>
<li>Select a survey and click on Show Statistics.</li>
</ol><!-- data_sec3 -->
<h2 id="data_sec3">What options are available for exporting survey statistics?</h2>
<p style="color: black;">There are three different formats to export survey statistics for data analysis. Survey statistics may be exported as an Excel file, comma delimited file, or SPSS file. As stated in the description, use the comma delimited values or SPSS formats for surveys containing large amounts of data. To export survey statistics complete these steps:</p>
<ol style="padding: 0em 4em;">
<li>Under Survey Entries click on the Export link.</li>
<li>Locate the survey that is to be exported from the list.</li>
<li>Choose a format to export the survey as by clicking on one of the links under the Actions column.</li>
<li>Specify a directory and file name and click on Save.</li>
</ol><!-- security_sec1 -->
<h2 id="security_sec1">How do I create users?</h2>
<p style="color: black;">The process of creating both internal and external users may only be accomplished by administrators. To create new internal users follow these steps:</p>
<ol style="padding: 0em 4em;">
<li>Ensure you are logged in as an administrator.</li>
<li>From the top menu bar go to the Security tab and click on Internal Users.</li>
<li>Click on Add new Internal User from the left panel.</li>
<li>On the Create new User page, click on the Enabled option to activate the account or leave it blank if the account is to remain deactivated.</li>
<li>Fill in the rest of the required fields. <br /><em>Note: The date of birth field accepts inputs in the MM/DD/YYYY format. The password must be at least eight characters long, contain at least one number, one lower case letter, one upper case letter, and at least one of these special characters: [@#$%^&amp;+=]</em></li>
<li>Select a group to place the user under.</li>
<li>If the assigned group is Survey Administrators, then choose a department or departments the user will have access to.</li>
</ol>
<p style="color: black;">The method of creating a new external user is essentially identical, except that the only option under the Groups section is Survey Participants. Also, instead of having departmental access external users only have access to surveys.</p>
<!-- security_sec2 -->
<h2 id="security_sec2">Where is the option to make surveys private or public?</h2>
<p style="color: black;">The option to make surveys private or public is located in the Create new Survey and Update Survey windows. The checkbox is labeled as Available to public.</p>
<!-- security_sec3 -->
<h2 id="security_sec3">When I try to log in I am getting a message that states Your login attempt was not successful, try again. Reason: User is disabled. Why is this occurring?</h2>
<p style="color: black;">This message is displayed when a user attempts to sign into the application with an inactive account. An administrator can remedy this issue by:</p>
<ol style="padding: 0em 4em;">
<li>Go to the Security tab on the top menu bar.</li>
<li>Depending on the user account, click on Internal or External Users.</li>
<li>Find the disabled account and click on the Update User link under the Actions column.</li>
<li>Check the Enbaled checkbox and click on Save.</li>
</ol><!-- other_sec1 -->
<h2 id="other_sec1">How do I export and import surveys?</h2>
<p style="color: black;">Exporting surveys only require a few steps:</p>
<ol style="padding: 0em 4em;">
<li>Go to the Settings tab and click on Surveys.</li>
<li>Find the survey to export and click on the Show Survey link located under the Actions column.</li>
<li>From the left panel click on Export Survey.</li>
<li>Choose a directory and specify a name for the file.</li>
</ol>
<p style="color: black;">To import surveys follow these steps:</p>
<ol style="padding: 0em 4em;">
<li>Go the Settings tab and click on Surveys.</li>
<li>Click on Import Surveys from the left panel.</li>
<li>Select a department, enter a name for the survey, and click on Choose File.</li>
<li>Browse to the directly containing the survey file and open it.</li>
<li>Click on Upload.</li>
</ol>
<p style="color: black;">An alternative method for importing surveys is available, but is restricted to administrators only:</p>
<ol style="padding: 0em 4em;">
<li>Go to the Security tab and click on Departments.</li>
<li>Select a department and click on the show department link under the Actions column.</li>
<li>Click on Import Surveys from the left panel.</li>
<li>Type in a name for the survey.</li>
<li>Select the survey file and click on Upload.</li>
</ol><!-- other_sec2 -->
<h2 id="other_sec2">What are datasets?</h2>
<p style="color: black;">Datasets are collections of data that can be imported and then used to populate a list of options. The accepted format of datasets is the comma delimited values file. An example dataset file is available for download on the Upload Dataset page. Please note that the process of adding, updating, and deleting datasets is restricted to administrators only. Do the following to add datasets:</p>
<ol style="padding: 0em 4em;">
<li>Under the Settings tab click on Datasets.</li>
<li>Click on Add new Dataset from the</li>
</ol><!-- other_sec3 -->
<h2 id="other_sec3">How do I send out survey invitations to a group of participants?</h2>
<p style="color: black;">A comma delimited file containing a list of the survey participants information may be used to send out email invitations for surveys. The format for the comma delimited files is first name, middle name, last name, and email address. An example file may be downloaded on the Invite Participants page.</p>
<p style="color: black;"><em>Note: Survey invitations may only be performed by administrators.</em></p>
<p style="color: black;">The steps to send out survey invitations are:</p>
<ol style="padding: 0em 4em;">
<li>Click on the Invitations link located under the Settings tab.</li>
<li>Click on Invite Participants from the left panel.</li>
<li>Select a survey and choose an invitations file.</li>
<li>Click on Upload.</li>
</ol>
<p style="color: black;">The total number of email invitations sent and number of invitation emails opened is displayed, along with more detailed information per survey.</p>
<!-- other_sec4 -->
<h2 id="other_sec4">What are masks?</h2>
<p style="color: black;">Masks are text patterns that responses must adhere to. 
If a mask is applied to a question then a participants entry to it is required to match the specific format of the mask. Only administrators are allowed to add, update, and delete masks. Applying them to questions may be carried out during the question creation or update processes under the Validation Information section.</p></body></html>', 'Internal Help Content', '2012-10-21 14:44:53', 0);
INSERT INTO velocity_template VALUES (4, '<p>欢迎 ${user_name} , The system provides a portal for collecting survey data. Please click on the ''Surveys'' tab in the top menu to get started.</p>', 'InternalHomePageContent', '2012-10-21 14:44:53', 0);
INSERT INTO velocity_template VALUES (5, 'Your survey has been submitted. Thank you for participating.', 'ExternalHomePageContent', '2012-10-21 14:44:53', 0);


--
-- Name: data_set_item_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY data_set_item
    ADD CONSTRAINT data_set_item_pkey PRIMARY KEY (id);


--
-- Name: data_set_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY data_set
    ADD CONSTRAINT data_set_name_key UNIQUE (name);


--
-- Name: data_set_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY data_set
    ADD CONSTRAINT data_set_pkey PRIMARY KEY (id);


--
-- Name: day_day_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY day
    ADD CONSTRAINT day_day_name_key UNIQUE (day_name);


--
-- Name: day_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY day
    ADD CONSTRAINT day_pkey PRIMARY KEY (id);


--
-- Name: department_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY department
    ADD CONSTRAINT department_name_key UNIQUE (name);


--
-- Name: department_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY department
    ADD CONSTRAINT department_pkey PRIMARY KEY (id);


--
-- Name: global_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY global_settings
    ADD CONSTRAINT global_settings_pkey PRIMARY KEY (id);


--
-- Name: invitation_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY invitation
    ADD CONSTRAINT invitation_pkey PRIMARY KEY (id);


--
-- Name: question_column_label_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_column_label
    ADD CONSTRAINT question_column_label_pkey PRIMARY KEY (id);


--
-- Name: question_option_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_option
    ADD CONSTRAINT question_option_pkey PRIMARY KEY (id);


--
-- Name: question_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question
    ADD CONSTRAINT question_pkey PRIMARY KEY (id);


--
-- Name: question_row_label_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_row_label
    ADD CONSTRAINT question_row_label_pkey PRIMARY KEY (id);


--
-- Name: regular_expression_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY regular_expression
    ADD CONSTRAINT regular_expression_pkey PRIMARY KEY (id);


--
-- Name: sec_authority_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_authority
    ADD CONSTRAINT sec_authority_name_key UNIQUE (name);


--
-- Name: sec_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_authority
    ADD CONSTRAINT sec_authority_pkey PRIMARY KEY (id);


--
-- Name: sec_group_authority_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_group_authority
    ADD CONSTRAINT sec_group_authority_pkey PRIMARY KEY (group_id, authority_id);


--
-- Name: sec_group_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_group
    ADD CONSTRAINT sec_group_name_key UNIQUE (name);


--
-- Name: sec_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_group
    ADD CONSTRAINT sec_group_pkey PRIMARY KEY (id);


--
-- Name: sec_password_reset_request_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_password_reset_request
    ADD CONSTRAINT sec_password_reset_request_pkey PRIMARY KEY (id);


--
-- Name: sec_user_department_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_department
    ADD CONSTRAINT sec_user_department_pkey PRIMARY KEY (user_id, department_id);


--
-- Name: sec_user_email_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user
    ADD CONSTRAINT sec_user_email_key UNIQUE (email);


--
-- Name: sec_user_group_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_group
    ADD CONSTRAINT sec_user_group_pkey PRIMARY KEY (group_id, user_id);


--
-- Name: sec_user_login_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user
    ADD CONSTRAINT sec_user_login_key UNIQUE (login);


--
-- Name: sec_user_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user
    ADD CONSTRAINT sec_user_pkey PRIMARY KEY (id);


--
-- Name: sec_user_survey_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_survey_definition
    ADD CONSTRAINT sec_user_survey_definition_pkey PRIMARY KEY (user_id, survey_definition_id);


--
-- Name: sector_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sector
    ADD CONSTRAINT sector_name_key UNIQUE (name);


--
-- Name: sector_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sector
    ADD CONSTRAINT sector_pkey PRIMARY KEY (id);


--
-- Name: survey_data_2_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_data_2
    ADD CONSTRAINT survey_data_2_pkey PRIMARY KEY (survey_id);


--
-- Name: survey_data_40_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_data_40
    ADD CONSTRAINT survey_data_40_pkey PRIMARY KEY (survey_id);


--
-- Name: survey_definition_page_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_definition_page
    ADD CONSTRAINT survey_definition_page_pkey PRIMARY KEY (id);


--
-- Name: survey_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_definition
    ADD CONSTRAINT survey_definition_pkey PRIMARY KEY (id);


--
-- Name: survey_document_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_document
    ADD CONSTRAINT survey_document_pkey PRIMARY KEY (id);


--
-- Name: survey_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey
    ADD CONSTRAINT survey_pkey PRIMARY KEY (id);


--
-- Name: survey_template_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_template
    ADD CONSTRAINT survey_template_pkey PRIMARY KEY (id);


--
-- Name: surveydefinition_reminders_daily_port_schedule_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY surveydefinition_reminders_daily_port_schedule
    ADD CONSTRAINT surveydefinition_reminders_daily_port_schedule_pkey PRIMARY KEY (day_id, survey_definition_id);


--
-- Name: velocity_template_pkey; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY velocity_template
    ADD CONSTRAINT velocity_template_pkey PRIMARY KEY (id);


--
-- Name: velocity_template_template_name_key; Type: CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY velocity_template
    ADD CONSTRAINT velocity_template_template_name_key UNIQUE (template_name);


--
-- Name: fk34f9a75840ac9ec8; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_definition
    ADD CONSTRAINT fk34f9a75840ac9ec8 FOREIGN KEY (department_id) REFERENCES department(id);


--
-- Name: fk3c5b17927fc58f7d; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_survey_definition
    ADD CONSTRAINT fk3c5b17927fc58f7d FOREIGN KEY (survey_definition_id) REFERENCES survey_definition(id);


--
-- Name: fk3c5b1792cabaa1ab; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_survey_definition
    ADD CONSTRAINT fk3c5b1792cabaa1ab FOREIGN KEY (user_id) REFERENCES sec_user(id);


--
-- Name: fk3d8d6db9b9df9fa9; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_group
    ADD CONSTRAINT fk3d8d6db9b9df9fa9 FOREIGN KEY (group_id) REFERENCES sec_group(id);


--
-- Name: fk3d8d6db9cabaa1ab; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_group
    ADD CONSTRAINT fk3d8d6db9cabaa1ab FOREIGN KEY (user_id) REFERENCES sec_user(id);


--
-- Name: fk3e4fc55f7d6911ac; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY surveydefinition_reminders_daily_port_schedule
    ADD CONSTRAINT fk3e4fc55f7d6911ac FOREIGN KEY (day_id) REFERENCES day(id);


--
-- Name: fk3e4fc55f7fc58f7d; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY surveydefinition_reminders_daily_port_schedule
    ADD CONSTRAINT fk3e4fc55f7fc58f7d FOREIGN KEY (survey_definition_id) REFERENCES survey_definition(id);


--
-- Name: fk45b9fbbf27b88d48; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_template
    ADD CONSTRAINT fk45b9fbbf27b88d48 FOREIGN KEY (sector_id) REFERENCES sector(id);


--
-- Name: fk473f77997fc58f7d; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY invitation
    ADD CONSTRAINT fk473f77997fc58f7d FOREIGN KEY (survey_definition_id) REFERENCES survey_definition(id);


--
-- Name: fk5a0d405840ac9ec8; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_department
    ADD CONSTRAINT fk5a0d405840ac9ec8 FOREIGN KEY (department_id) REFERENCES department(id);


--
-- Name: fk5a0d4058cabaa1ab; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_user_department
    ADD CONSTRAINT fk5a0d4058cabaa1ab FOREIGN KEY (user_id) REFERENCES sec_user(id);


--
-- Name: fk6e1e3aee734621c8; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_option
    ADD CONSTRAINT fk6e1e3aee734621c8 FOREIGN KEY (question_id) REFERENCES question(id);


--
-- Name: fk6f409084734621c8; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_column_label
    ADD CONSTRAINT fk6f409084734621c8 FOREIGN KEY (question_id) REFERENCES question(id);


--
-- Name: fk724b5f36734621c8; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question_row_label
    ADD CONSTRAINT fk724b5f36734621c8 FOREIGN KEY (question_id) REFERENCES question(id);


--
-- Name: fk76b325c5d92930c; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY data_set_item
    ADD CONSTRAINT fk76b325c5d92930c FOREIGN KEY (dataset_id) REFERENCES data_set(id);


--
-- Name: fk93904b167fc58f7d; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY survey_definition_page
    ADD CONSTRAINT fk93904b167fc58f7d FOREIGN KEY (survey_definition_id) REFERENCES survey_definition(id);


--
-- Name: fka6397595818ef9a9; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_group_authority
    ADD CONSTRAINT fka6397595818ef9a9 FOREIGN KEY (authority_id) REFERENCES sec_authority(id);


--
-- Name: fka6397595b9df9fa9; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY sec_group_authority
    ADD CONSTRAINT fka6397595b9df9fa9 FOREIGN KEY (group_id) REFERENCES sec_group(id);


--
-- Name: fkba823be63b4ebc2e; Type: FK CONSTRAINT; Schema: public; Owner: tongueval
--

ALTER TABLE ONLY question
    ADD CONSTRAINT fkba823be63b4ebc2e FOREIGN KEY (survey_definition_page_id) REFERENCES survey_definition_page(id);


--
-- PostgreSQL database dump complete
--

