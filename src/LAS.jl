module LAS

using ColorTypes
using Dates
using DocStringExtensions
using FileIO
using FixedPointNumbers
using PackedReadWrite
import Pkg.Types: read_project
using Printf
using StaticArrays
using StructArrays
using TypedTables

include("defaults.jl")
include("util.jl")
include("spatial_info.jl")
include("points.jl")
include("records.jl")
include("header.jl")
include("parse_points.jl")

# point functionality
export LasRecord, LasPoint
export LasPoint0, LasPoint1, LasPoint2, LasPoint3, LasPoint4, LasPoint5, LasPoint6, LasPoint7, LasPoint8, LasPoint9, LasPoint10
export intensity, scan_angle, return_number, number_of_returns, scanner_channel, edge_of_flight_line, flag_byte, flag_byte_1, flag_byte_2
export classification, synthetic, key_point, withheld, overlap, raw_classification, get_intensity, get_integer_intensity, point_source_id
export scan_direction, user_data

# header interface
export LasHeader, is_standard_gps, is_wkt, file_source_id, global_encoding, las_version, system_id, software_id, creation_day_of_year, creation_year
export header_size, point_data_offset, point_record_length, record_format, point_format,  number_of_points, number_of_vlrs, number_of_evlrs, evlr_start, spatial_info, num_return_channels
export set_spatial_info!, set_point_data_offset!, set_point_record_length!, set_point_record_count!, set_num_vlr!, set_num_evlr!, set_gps_week_time_bit!
export set_gps_standard_time_bit!, is_internal_waveform, is_external_waveform, unset_wkt_bit!
export set_waveform_external_bit!, set_waveform_internal_bit!, set_synthetic_return_numbers_bit!, unset_synthetic_return_numbers_bit!
export set_wkt_bit!, get_number_of_points_by_return, set_number_of_points_by_return!, waveform_record_start
export xcoord, ycoord, zcoord
        

export SpatialInfo, AxisInfo, Range

end # module LAS