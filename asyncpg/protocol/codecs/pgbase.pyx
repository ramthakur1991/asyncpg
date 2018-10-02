# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_bits_codecs():
    register_core_codec(BITOID,
                        <encode_func>pgbase.bits_encode,
                        <decode_func>pgbase.bits_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(VARBITOID,
                        <encode_func>pgbase.bits_encode,
                        <decode_func>pgbase.bits_decode,
                        PG_FORMAT_BINARY)


cdef init_bytea_codecs():
    register_core_codec(BYTEAOID,
                        <encode_func>pgbase.bytea_encode,
                        <decode_func>pgbase.bytea_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(CHAROID,
                        <encode_func>pgbase.bytea_encode,
                        <decode_func>pgbase.bytea_decode,
                        PG_FORMAT_BINARY)


cdef init_datetime_codecs():
    register_core_codec(DATEOID,
                        <encode_func>pgbase.date_encode,
                        <decode_func>pgbase.date_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(DATEOID,
                        <encode_func>pgbase.date_encode_tuple,
                        <decode_func>pgbase.date_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMEOID,
                        <encode_func>pgbase.time_encode,
                        <decode_func>pgbase.time_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMEOID,
                        <encode_func>pgbase.time_encode_tuple,
                        <decode_func>pgbase.time_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMETZOID,
                        <encode_func>pgbase.timetz_encode,
                        <decode_func>pgbase.timetz_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMETZOID,
                        <encode_func>pgbase.timetz_encode_tuple,
                        <decode_func>pgbase.timetz_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMESTAMPOID,
                        <encode_func>pgbase.timestamp_encode,
                        <decode_func>pgbase.timestamp_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMESTAMPOID,
                        <encode_func>pgbase.timestamp_encode_tuple,
                        <decode_func>pgbase.timestamp_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMESTAMPTZOID,
                        <encode_func>pgbase.timestamptz_encode,
                        <decode_func>pgbase.timestamptz_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMESTAMPTZOID,
                        <encode_func>pgbase.timestamp_encode_tuple,
                        <decode_func>pgbase.timestamp_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(INTERVALOID,
                        <encode_func>pgbase.interval_encode,
                        <decode_func>pgbase.interval_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INTERVALOID,
                        <encode_func>pgbase.interval_encode_tuple,
                        <decode_func>pgbase.interval_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    # For obsolete abstime/reltime/tinterval, we do not bother to
    # interpret the value, and simply return and pass it as text.
    #
    register_core_codec(ABSTIMEOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(RELTIMEOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(TINTERVALOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)


cdef init_float_codecs():
    register_core_codec(FLOAT4OID,
                        <encode_func>pgbase.float4_encode,
                        <decode_func>pgbase.float4_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(FLOAT8OID,
                        <encode_func>pgbase.float8_encode,
                        <decode_func>pgbase.float8_decode,
                        PG_FORMAT_BINARY)


cdef init_geometry_codecs():
    register_core_codec(BOXOID,
                        <encode_func>pgbase.box_encode,
                        <decode_func>pgbase.box_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(LINEOID,
                        <encode_func>pgbase.line_encode,
                        <decode_func>pgbase.line_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(LSEGOID,
                        <encode_func>pgbase.lseg_encode,
                        <decode_func>pgbase.lseg_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(POINTOID,
                        <encode_func>pgbase.point_encode,
                        <decode_func>pgbase.point_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(PATHOID,
                        <encode_func>pgbase.path_encode,
                        <decode_func>pgbase.path_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(POLYGONOID,
                        <encode_func>pgbase.poly_encode,
                        <decode_func>pgbase.poly_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(CIRCLEOID,
                        <encode_func>pgbase.circle_encode,
                        <decode_func>pgbase.circle_decode,
                        PG_FORMAT_BINARY)


cdef init_hstore_codecs():
    register_extra_codec('pg_contrib.hstore',
                         <encode_func>pgbase.hstore_encode,
                         <decode_func>pgbase.hstore_decode,
                         PG_FORMAT_BINARY)


cdef init_json_codecs():
    register_core_codec(JSONOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_BINARY)
    register_core_codec(JSONBOID,
                        <encode_func>pgbase.jsonb_encode,
                        <decode_func>pgbase.jsonb_decode,
                        PG_FORMAT_BINARY)


cdef init_int_codecs():

    register_core_codec(BOOLOID,
                        <encode_func>pgbase.bool_encode,
                        <decode_func>pgbase.bool_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INT2OID,
                        <encode_func>pgbase.int2_encode,
                        <decode_func>pgbase.int2_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INT4OID,
                        <encode_func>pgbase.int4_encode,
                        <decode_func>pgbase.int4_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INT8OID,
                        <encode_func>pgbase.int8_encode,
                        <decode_func>pgbase.int8_decode,
                        PG_FORMAT_BINARY)


cdef init_pseudo_codecs():
    # Void type is returned by SELECT void_returning_function()
    register_core_codec(VOIDOID,
                        <encode_func>pgbase.void_encode,
                        <decode_func>pgbase.void_decode,
                        PG_FORMAT_BINARY)

    # Unknown type, always decoded as text
    register_core_codec(UNKNOWNOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    # OID and friends
    oid_types = [
        OIDOID, XIDOID, CIDOID
    ]

    for oid_type in oid_types:
        register_core_codec(oid_type,
                            <encode_func>pgbase.uint4_encode,
                            <decode_func>pgbase.uint4_decode,
                            PG_FORMAT_BINARY)

    # reg* types -- these are really system catalog OIDs, but
    # allow the catalog object name as an input.  We could just
    # decode these as OIDs, but handling them as text seems more
    # useful.
    #
    reg_types = [
        REGPROCOID, REGPROCEDUREOID, REGOPEROID, REGOPERATOROID,
        REGCLASSOID, REGTYPEOID, REGCONFIGOID, REGDICTIONARYOID,
        REGNAMESPACEOID, REGROLEOID, REFCURSOROID
    ]

    for reg_type in reg_types:
        register_core_codec(reg_type,
                            <encode_func>pgbase.text_encode,
                            <decode_func>pgbase.text_decode,
                            PG_FORMAT_TEXT)

    # cstring type is used by Postgres' I/O functions
    register_core_codec(CSTRINGOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_BINARY)

    # various system pseudotypes with no I/O
    no_io_types = [
        ANYOID, TRIGGEROID, EVENT_TRIGGEROID, LANGUAGE_HANDLEROID,
        FDW_HANDLEROID, TSM_HANDLEROID, INTERNALOID, OPAQUEOID,
        ANYELEMENTOID, ANYNONARRAYOID, PG_DDL_COMMANDOID,
        INDEX_AM_HANDLEROID,
    ]

    register_core_codec(ANYENUMOID,
                        NULL,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    for no_io_type in no_io_types:
        register_core_codec(no_io_type,
                            NULL,
                            NULL,
                            PG_FORMAT_BINARY)

    # ACL specification string
    register_core_codec(ACLITEMOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    # Postgres' serialized expression tree type
    register_core_codec(PG_NODE_TREEOID,
                        NULL,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    # pg_lsn type -- a pointer to a location in the XLOG.
    register_core_codec(PG_LSNOID,
                        <encode_func>pgbase.int8_encode,
                        <decode_func>pgbase.int8_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(SMGROID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    # pg_dependencies and pg_ndistinct are special types
    # used in pg_statistic_ext columns.
    register_core_codec(PG_DEPENDENCIESOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(PG_NDISTINCTOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)


cdef init_text_codecs():
    textoids = [
        NAMEOID,
        BPCHAROID,
        VARCHAROID,
        TEXTOID,
        XMLOID
    ]

    for oid in textoids:
        register_core_codec(oid,
                            <encode_func>pgbase.text_encode,
                            <decode_func>pgbase.text_decode,
                            PG_FORMAT_BINARY)

        register_core_codec(oid,
                            <encode_func>pgbase.text_encode,
                            <decode_func>pgbase.text_decode,
                            PG_FORMAT_TEXT)


cdef init_tid_codecs():
    register_core_codec(TIDOID,
                        <encode_func>pgbase.tid_encode,
                        <decode_func>pgbase.tid_decode,
                        PG_FORMAT_BINARY)


cdef init_txid_codecs():
    register_core_codec(TXID_SNAPSHOTOID,
                        <encode_func>pgbase.txid_snapshot_encode,
                        <decode_func>pgbase.txid_snapshot_decode,
                        PG_FORMAT_BINARY)


cdef init_tsearch_codecs():
    ts_oids = [
        TSQUERYOID,
        TSVECTOROID,
    ]

    for oid in ts_oids:
        register_core_codec(oid,
                            <encode_func>pgbase.text_encode,
                            <decode_func>pgbase.text_decode,
                            PG_FORMAT_TEXT)

    register_core_codec(GTSVECTOROID,
                        NULL,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)


cdef init_uuid_codecs():
    register_core_codec(UUIDOID,
                        <encode_func>pgbase.uuid_encode,
                        <decode_func>pgbase.uuid_decode,
                        PG_FORMAT_BINARY)


cdef init_numeric_codecs():
    register_core_codec(NUMERICOID,
                        <encode_func>pgbase.numeric_encode_text,
                        <decode_func>pgbase.numeric_decode_text,
                        PG_FORMAT_TEXT)

    register_core_codec(NUMERICOID,
                        <encode_func>pgbase.numeric_encode_binary,
                        <decode_func>pgbase.numeric_decode_binary,
                        PG_FORMAT_BINARY)


cdef init_network_codecs():
    register_core_codec(CIDROID,
                        <encode_func>pgbase.cidr_encode,
                        <decode_func>pgbase.net_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INETOID,
                        <encode_func>pgbase.inet_encode,
                        <decode_func>pgbase.net_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(MACADDROID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(MACADDR8OID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)


cdef init_monetary_codecs():
    moneyoids = [
        MONEYOID,
    ]

    for oid in moneyoids:
        register_core_codec(oid,
                            <encode_func>pgbase.text_encode,
                            <decode_func>pgbase.text_decode,
                            PG_FORMAT_TEXT)


cdef init_pgbase_codecs():
    # String types.  Need to go first, as other codecs may rely on
    # text decoding/encoding.
    init_bytea_codecs()
    init_text_codecs()

    # Builtin types, in lexicographical order.
    init_bits_codecs()
    init_datetime_codecs()
    init_float_codecs()
    init_geometry_codecs()
    init_int_codecs()
    init_json_codecs()
    init_monetary_codecs()
    init_network_codecs()
    init_numeric_codecs()
    init_tid_codecs()
    init_tsearch_codecs()
    init_txid_codecs()
    init_uuid_codecs()

    # Various pseudotypes and system types
    init_pseudo_codecs()

    # contrib
    init_hstore_codecs()


init_pgbase_codecs()
