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

init_bits_codecs()
