# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_tid_codecs():
    register_core_codec(TIDOID,
                        <encode_func>pgbase.tid_encode,
                        <decode_func>pgbase.tid_decode,
                        PG_FORMAT_BINARY)


init_tid_codecs()
