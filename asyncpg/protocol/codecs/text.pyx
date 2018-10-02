# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


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

init_text_codecs()
