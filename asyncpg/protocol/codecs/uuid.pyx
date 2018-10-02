# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_uuid_codecs():
    register_core_codec(UUIDOID,
                        <encode_func>pgbase.uuid_encode,
                        <decode_func>pgbase.uuid_decode,
                        PG_FORMAT_BINARY)

init_uuid_codecs()
