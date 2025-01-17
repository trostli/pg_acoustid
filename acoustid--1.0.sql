-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION acoustid" to load this file. \quit

CREATE OR REPLACE FUNCTION acoustid_compare2(int8[], int8[], int DEFAULT 0) RETURNS float4
    AS 'MODULE_PATHNAME'
    LANGUAGE C VOLATILE STRICT -- marked as VOLATILE to avoid multiple calls, even though the results are immutable
    COST 1000;

CREATE OR REPLACE FUNCTION acoustid_compare3(int8[], int8[], int DEFAULT -1) RETURNS float4
    AS 'MODULE_PATHNAME'
    LANGUAGE C VOLATILE STRICT -- marked as VOLATILE to avoid multiple calls, even though the results are immutable
    COST 1000;

CREATE OR REPLACE FUNCTION acoustid_extract_query(int8[]) RETURNS int8[]
    AS 'MODULE_PATHNAME'
    LANGUAGE C IMMUTABLE STRICT;
