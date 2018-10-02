# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_geometry_codecs():
    register_core_codec(BOXOID,
                        <encode_func>pgbase.box_encode,
                        <decode_func>pgbase.box_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(LINEOID,
                        <encode_func>pgbase.line_encode,
                        <decode_func>pgbase.line_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(LSEGOID,
                        <encode_func>pgbase.lseg_encode,
                        <decode_func>pgbase.lseg_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(POINTOID,
                        <encode_func>pgbase.point_encode,
                        <decode_func>pgbase.point_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(PATHOID,
                        <encode_func>pgbase.path_encode,
                        <decode_func>pgbase.path_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(POLYGONOID,
                        <encode_func>pgbase.poly_encode,
                        <decode_func>pgbase.poly_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(CIRCLEOID,
                        <encode_func>pgbase.circle_encode,
                        <decode_func>pgbase.circle_decode,
                        PG_FORMAT_BINARY)


init_geometry_codecs()
