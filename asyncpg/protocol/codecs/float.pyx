# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_float_codecs():
    register_core_codec(FLOAT4OID,
                        <encode_func>pgbase.float4_encode,
                        <decode_func>pgbase.float4_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(FLOAT8OID,
                        <encode_func>pgbase.float8_encode,
                        <decode_func>pgbase.float8_decode,
                        PG_FORMAT_BINARY)


init_float_codecs()
