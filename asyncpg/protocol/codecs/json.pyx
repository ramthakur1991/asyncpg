# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_json_codecs():
    register_core_codec(JSONOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_BINARY)
    register_core_codec(JSONBOID,
                        <encode_func>pgbase.jsonb_encode,
                        <decode_func>pgbase.jsonb_decode,
                        PG_FORMAT_BINARY)

init_json_codecs()
