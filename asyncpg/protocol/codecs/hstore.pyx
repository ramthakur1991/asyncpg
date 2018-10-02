# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_hstore_codecs():
    register_extra_codec('pg_contrib.hstore',
                         <encode_func>pgbase.hstore_encode,
                         <decode_func>pgbase.hstore_decode,
                         PG_FORMAT_BINARY)

init_hstore_codecs()
