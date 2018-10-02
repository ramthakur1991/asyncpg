# Copyright (C) 2016-present the asyncpg authors and contributors
# <see AUTHORS file>
#
# This module is part of asyncpg and is released under
# the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0


cdef init_datetime_codecs():
    register_core_codec(DATEOID,
                        <encode_func>pgbase.date_encode,
                        <decode_func>pgbase.date_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(DATEOID,
                        <encode_func>pgbase.date_encode_tuple,
                        <decode_func>pgbase.date_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMEOID,
                        <encode_func>pgbase.time_encode,
                        <decode_func>pgbase.time_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMEOID,
                        <encode_func>pgbase.time_encode_tuple,
                        <decode_func>pgbase.time_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMETZOID,
                        <encode_func>pgbase.timetz_encode,
                        <decode_func>pgbase.timetz_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMETZOID,
                        <encode_func>pgbase.timetz_encode_tuple,
                        <decode_func>pgbase.timetz_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMESTAMPOID,
                        <encode_func>pgbase.timestamp_encode,
                        <decode_func>pgbase.timestamp_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMESTAMPOID,
                        <encode_func>pgbase.timestamp_encode_tuple,
                        <decode_func>pgbase.timestamp_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(TIMESTAMPTZOID,
                        <encode_func>pgbase.timestamptz_encode,
                        <decode_func>pgbase.timestamptz_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(TIMESTAMPTZOID,
                        <encode_func>pgbase.timestamp_encode_tuple,
                        <decode_func>pgbase.timestamp_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    register_core_codec(INTERVALOID,
                        <encode_func>pgbase.interval_encode,
                        <decode_func>pgbase.interval_decode,
                        PG_FORMAT_BINARY)

    register_core_codec(INTERVALOID,
                        <encode_func>pgbase.interval_encode_tuple,
                        <decode_func>pgbase.interval_decode_tuple,
                        PG_FORMAT_BINARY,
                        PG_XFORMAT_TUPLE)

    # For obsolete abstime/reltime/tinterval, we do not bother to
    # interpret the value, and simply return and pass it as text.
    #
    register_core_codec(ABSTIMEOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(RELTIMEOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

    register_core_codec(TINTERVALOID,
                        <encode_func>pgbase.text_encode,
                        <decode_func>pgbase.text_decode,
                        PG_FORMAT_TEXT)

init_datetime_codecs()
