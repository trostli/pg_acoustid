-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION intarray FROM unpackaged" to load this file. \quit

ALTER EXTENSION acoustid ADD function acoustid_compare2(int8[], int8[], int);
ALTER EXTENSION acoustid ADD function acoustid_compare3(int8[], int8[], int);
ALTER EXTENSION acoustid ADD function acoustid_extract_query(int8[]);
