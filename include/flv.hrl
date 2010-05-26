
-record(flv_tag, {
  type               ::frame_content(),
  flavor             ::frame_flavor(),  % keyframe or frame
  timestamp          ::number(),
  composition_offset ::number(),
  size               ::non_neg_integer(),
  offset             ::non_neg_integer(),
  next_tag_offset    ::non_neg_integer(),
  body               ::binary()
}).

-record(flv_audio_tag, {
  codec              ::frame_audio_codec(),
  rate               ::frame_sound_rate(),
  bitsize            ::frame_sound_size(),
  channels           ::frame_sound_channels(),
  flavor             ::frame_flavor(),
  body               ::binary()
}).

-record(flv_video_tag, {
  codec              ::frame_video_codec(),
  flavor             ::frame_flavor(),
  composition_time   ::number(),
  body               ::binary()
}).


-record(flv_header,{
	version = 1,
	audio = 0,
	video = 0
}).
