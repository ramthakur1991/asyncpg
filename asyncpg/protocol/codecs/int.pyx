# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


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


init_int_codecs()
