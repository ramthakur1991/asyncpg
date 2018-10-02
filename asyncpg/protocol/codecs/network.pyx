# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


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


init_network_codecs()
