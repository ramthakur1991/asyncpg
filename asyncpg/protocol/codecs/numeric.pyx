# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_numeric_codecs():
    register_core_codec(NUMERICOID,
                        <encode_func>pgbase.numeric_encode_text,
                        <decode_func>pgbase.numeric_decode_text,
                        PG_FORMAT_TEXT)

    register_core_codec(NUMERICOID,
                        <encode_func>pgbase.numeric_encode_binary,
                        <decode_func>pgbase.numeric_decode_binary,
                        PG_FORMAT_BINARY)

init_numeric_codecs()
