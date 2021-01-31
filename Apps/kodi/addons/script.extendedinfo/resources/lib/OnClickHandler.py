import xbmcgui

ACTIONS = {
	'left': xbmcgui.ACTION_MOVE_LEFT,
	'right': xbmcgui.ACTION_MOVE_RIGHT,
	'up': xbmcgui.ACTION_MOVE_UP,
	'down': xbmcgui.ACTION_MOVE_DOWN,
	'pageup': xbmcgui.ACTION_PAGE_UP,
	'pagedown': xbmcgui.ACTION_PAGE_DOWN,
	'select': xbmcgui.ACTION_SELECT_ITEM,
	'highlight': xbmcgui.ACTION_HIGHLIGHT_ITEM,
	'parentdir': xbmcgui.ACTION_NAV_BACK,
	'parentfolder': xbmcgui.ACTION_PARENT_DIR,
	'back': xbmcgui.ACTION_NAV_BACK,
	'previousmenu': xbmcgui.ACTION_PREVIOUS_MENU,
	'info': xbmcgui.ACTION_SHOW_INFO,
	'pause': xbmcgui.ACTION_PAUSE,
	'stop': xbmcgui.ACTION_STOP,
	'skipnext': xbmcgui.ACTION_NEXT_ITEM,
	'skipprevious': xbmcgui.ACTION_PREV_ITEM,
	'fullscreen': xbmcgui.ACTION_SHOW_GUI,
	'aspectratio': xbmcgui.ACTION_ASPECT_RATIO,
	'stepforward': xbmcgui.ACTION_STEP_FORWARD,
	'stepback': xbmcgui.ACTION_STEP_BACK,
	'bigstepforward': xbmcgui.ACTION_BIG_STEP_FORWARD,
	'bigstepback': xbmcgui.ACTION_BIG_STEP_BACK,
	'chapterorbigstepforward': xbmcgui.ACTION_CHAPTER_OR_BIG_STEP_FORWARD,
	'chapterorbigstepback': xbmcgui.ACTION_CHAPTER_OR_BIG_STEP_BACK,
	'osd': xbmcgui.ACTION_SHOW_OSD,
	'showsubtitles': xbmcgui.ACTION_SHOW_SUBTITLES,
	'nextsubtitle': xbmcgui.ACTION_NEXT_SUBTITLE,
	'cyclesubtitle': xbmcgui.ACTION_CYCLE_SUBTITLE,
	'playerdebug': xbmcgui.ACTION_PLAYER_DEBUG,
	'nextpicture': xbmcgui.ACTION_NEXT_PICTURE,
	'previouspicture': xbmcgui.ACTION_PREV_PICTURE,
	'zoomout': xbmcgui.ACTION_ZOOM_OUT,
	'zoomin': xbmcgui.ACTION_ZOOM_IN,
	'playlist': xbmcgui.ACTION_SHOW_PLAYLIST,
	'queue': xbmcgui.ACTION_QUEUE_ITEM,
	'zoomnormal': xbmcgui.ACTION_ZOOM_LEVEL_NORMAL,
	'zoomlevel1': xbmcgui.ACTION_ZOOM_LEVEL_1,
	'zoomlevel2': xbmcgui.ACTION_ZOOM_LEVEL_2,
	'zoomlevel3': xbmcgui.ACTION_ZOOM_LEVEL_3,
	'zoomlevel4': xbmcgui.ACTION_ZOOM_LEVEL_4,
	'zoomlevel5': xbmcgui.ACTION_ZOOM_LEVEL_5,
	'zoomlevel6': xbmcgui.ACTION_ZOOM_LEVEL_6,
	'zoomlevel7': xbmcgui.ACTION_ZOOM_LEVEL_7,
	'zoomlevel8': xbmcgui.ACTION_ZOOM_LEVEL_8,
	'zoomlevel9': xbmcgui.ACTION_ZOOM_LEVEL_9,
	'nextcalibration': xbmcgui.ACTION_CALIBRATE_SWAP_ARROWS,
	'resetcalibration': xbmcgui.ACTION_CALIBRATE_RESET,
	'analogmove': xbmcgui.ACTION_ANALOG_MOVE,
	'rotate': xbmcgui.ACTION_ROTATE_PICTURE_CW,
	'rotateccw': xbmcgui.ACTION_ROTATE_PICTURE_CCW,
	'close': xbmcgui.ACTION_NAV_BACK,
	'subtitledelayminus': xbmcgui.ACTION_SUBTITLE_DELAY_MIN,
	'subtitledelay': xbmcgui.ACTION_SUBTITLE_DELAY,
	'subtitledelayplus': xbmcgui.ACTION_SUBTITLE_DELAY_PLUS,
	'audiodelayminus': xbmcgui.ACTION_AUDIO_DELAY_MIN,
	'audiodelay': xbmcgui.ACTION_AUDIO_DELAY,
	'audiodelayplus': xbmcgui.ACTION_AUDIO_DELAY_PLUS,
	'subtitleshiftup': xbmcgui.ACTION_SUBTITLE_VSHIFT_UP,
	'subtitleshiftdown': xbmcgui.ACTION_SUBTITLE_VSHIFT_DOWN,
	'subtitlealign': xbmcgui.ACTION_SUBTITLE_ALIGN,
	'audionextlanguage': xbmcgui.ACTION_AUDIO_NEXT_LANGUAGE,
	'verticalshiftup': xbmcgui.ACTION_VSHIFT_UP,
	'verticalshiftdown': xbmcgui.ACTION_VSHIFT_DOWN,
	'nextresolution': xbmcgui.ACTION_CHANGE_RESOLUTION,
	'audiotoggledigital': xbmcgui.ACTION_TOGGLE_DIGITAL_ANALOG,
	'number0': xbmcgui.REMOTE_0,
	'number1': xbmcgui.REMOTE_1,
	'number2': xbmcgui.REMOTE_2,
	'number3': xbmcgui.REMOTE_3,
	'number4': xbmcgui.REMOTE_4,
	'number5': xbmcgui.REMOTE_5,
	'number6': xbmcgui.REMOTE_6,
	'number7': xbmcgui.REMOTE_7,
	'number8': xbmcgui.REMOTE_8,
	'number9': xbmcgui.REMOTE_9,
	'smallstepback': xbmcgui.ACTION_SMALL_STEP_BACK,
	'fastforward': xbmcgui.ACTION_PLAYER_FORWARD,
	'rewind': xbmcgui.ACTION_PLAYER_REWIND,
	'play': xbmcgui.ACTION_PLAYER_PLAY,
	'playpause': xbmcgui.ACTION_PLAYER_PLAYPAUSE,
	'switchplayer': xbmcgui.ACTION_SWITCH_PLAYER,
	'delete': xbmcgui.ACTION_DELETE_ITEM,
	'copy': xbmcgui.ACTION_COPY_ITEM,
	'move': xbmcgui.ACTION_MOVE_ITEM,
	'screenshot': xbmcgui.ACTION_TAKE_SCREENSHOT,
	'rename': xbmcgui.ACTION_RENAME_ITEM,
	'togglewatched': xbmcgui.ACTION_TOGGLE_WATCHED,
	'scanitem': xbmcgui.ACTION_SCAN_ITEM,
	'reloadkeymaps': xbmcgui.ACTION_RELOAD_KEYMAPS,
	'volumeup': xbmcgui.ACTION_VOLUME_UP,
	'volumedown': xbmcgui.ACTION_VOLUME_DOWN,
	'mute': xbmcgui.ACTION_MUTE,
	'backspace': xbmcgui.ACTION_BACKSPACE,
	'scrollup': xbmcgui.ACTION_SCROLL_UP,
	'scrolldown': xbmcgui.ACTION_SCROLL_DOWN,
	'analogfastforward': xbmcgui.ACTION_ANALOG_FORWARD,
	'analogrewind': xbmcgui.ACTION_ANALOG_REWIND,
	'moveitemup': xbmcgui.ACTION_MOVE_ITEM_UP,
	'moveitemdown': xbmcgui.ACTION_MOVE_ITEM_DOWN,
	'contextmenu': xbmcgui.ACTION_CONTEXT_MENU,
	'shift': xbmcgui.ACTION_SHIFT,
	'symbols': xbmcgui.ACTION_SYMBOLS,
	'cursorleft': xbmcgui.ACTION_CURSOR_LEFT,
	'cursorright': xbmcgui.ACTION_CURSOR_RIGHT,
	'showtime': xbmcgui.ACTION_SHOW_OSD_TIME,
	'analogseekforward': xbmcgui.ACTION_ANALOG_SEEK_FORWARD,
	'analogseekback': xbmcgui.ACTION_ANALOG_SEEK_BACK,
	'showpreset': xbmcgui.ACTION_VIS_PRESET_SHOW,
	'nextpreset': xbmcgui.ACTION_VIS_PRESET_NEXT,
	'previouspreset': xbmcgui.ACTION_VIS_PRESET_PREV,
	'lockpreset': xbmcgui.ACTION_VIS_PRESET_LOCK,
	'randompreset': xbmcgui.ACTION_VIS_PRESET_RANDOM,
	'increasevisrating': xbmcgui.ACTION_VIS_RATE_PRESET_PLUS,
	'decreasevisrating': xbmcgui.ACTION_VIS_RATE_PRESET_MINUS,
	'showvideomenu': xbmcgui.ACTION_SHOW_VIDEOMENU,
	'enter': xbmcgui.ACTION_ENTER,
	'increaserating': xbmcgui.ACTION_INCREASE_RATING,
	'decreaserating': xbmcgui.ACTION_DECREASE_RATING,
	'togglefullscreen': xbmcgui.ACTION_TOGGLE_FULLSCREEN,
	'nextscene': xbmcgui.ACTION_NEXT_SCENE,
	'previousscene': xbmcgui.ACTION_PREV_SCENE,
	'nextletter': xbmcgui.ACTION_NEXT_LETTER,
	'prevletter': xbmcgui.ACTION_PREV_LETTER,
	'jumpsms2': xbmcgui.ACTION_JUMP_SMS2,
	'jumpsms3': xbmcgui.ACTION_JUMP_SMS3,
	'jumpsms4': xbmcgui.ACTION_JUMP_SMS4,
	'jumpsms5': xbmcgui.ACTION_JUMP_SMS5,
	'jumpsms6': xbmcgui.ACTION_JUMP_SMS6,
	'jumpsms7': xbmcgui.ACTION_JUMP_SMS7,
	'jumpsms8': xbmcgui.ACTION_JUMP_SMS8,
	'jumpsms9': xbmcgui.ACTION_JUMP_SMS9,
	'filter': xbmcgui.ACTION_FILTER,
	'filterclear': xbmcgui.ACTION_FILTER_CLEAR,
	'filtersms2': xbmcgui.ACTION_FILTER_SMS2,
	'filtersms3': xbmcgui.ACTION_FILTER_SMS3,
	'filtersms4': xbmcgui.ACTION_FILTER_SMS4,
	'filtersms5': xbmcgui.ACTION_FILTER_SMS5,
	'filtersms6': xbmcgui.ACTION_FILTER_SMS6,
	'filtersms7': xbmcgui.ACTION_FILTER_SMS7,
	'filtersms8': xbmcgui.ACTION_FILTER_SMS8,
	'filtersms9': xbmcgui.ACTION_FILTER_SMS9,
	'firstpage': xbmcgui.ACTION_FIRST_PAGE,
	'lastpage': xbmcgui.ACTION_LAST_PAGE,
	'guiprofile': xbmcgui.ACTION_GUIPROFILE_BEGIN,
	'red': xbmcgui.ACTION_TELETEXT_RED,
	'green': xbmcgui.ACTION_TELETEXT_GREEN,
	'yellow': xbmcgui.ACTION_TELETEXT_YELLOW,
	'blue': xbmcgui.ACTION_TELETEXT_BLUE,
	'increasepar': xbmcgui.ACTION_INCREASE_PAR,
	'decreasepar': xbmcgui.ACTION_DECREASE_PAR,
	'volampup': xbmcgui.ACTION_VOLAMP_UP,
	'volampdown': xbmcgui.ACTION_VOLAMP_DOWN,
	'createbookmark': xbmcgui.ACTION_CREATE_BOOKMARK,
	'createepisodebookmark': xbmcgui.ACTION_CREATE_EPISODE_BOOKMARK,
	'settingsreset': xbmcgui.ACTION_SETTINGS_RESET,
	'settingslevelchange': xbmcgui.ACTION_SETTINGS_LEVEL_CHANGE,
	'stereomode': xbmcgui.ACTION_STEREOMODE_SELECT,
	'nextstereomode': xbmcgui.ACTION_STEREOMODE_NEXT,
	'previousstereomode': xbmcgui.ACTION_STEREOMODE_PREVIOUS,
	'togglestereomode': xbmcgui.ACTION_STEREOMODE_TOGGLE,
	'stereomodetomono': xbmcgui.ACTION_STEREOMODE_TOMONO,
	'channelup': xbmcgui.ACTION_CHANNEL_UP,
	'channeldown': xbmcgui.ACTION_CHANNEL_DOWN,
	'previouschannelgroup': xbmcgui.ACTION_PREVIOUS_CHANNELGROUP,
	'nextchannelgroup': xbmcgui.ACTION_NEXT_CHANNELGROUP,
	'playpvr': xbmcgui.ACTION_PVR_PLAY,
	'playpvrtv': xbmcgui.ACTION_PVR_PLAY_TV,
	'playpvrradio': xbmcgui.ACTION_PVR_PLAY_RADIO,
	'record': xbmcgui.ACTION_RECORD,
	'leftclick': xbmcgui.ACTION_MOUSE_LEFT_CLICK,
	'rightclick': xbmcgui.ACTION_MOUSE_RIGHT_CLICK,
	'middleclick': xbmcgui.ACTION_MOUSE_MIDDLE_CLICK,
	'doubleclick': xbmcgui.ACTION_MOUSE_DOUBLE_CLICK,
	'longclick': xbmcgui.ACTION_MOUSE_LONG_CLICK,
	'wheelup': xbmcgui.ACTION_MOUSE_WHEEL_UP,
	'wheeldown': xbmcgui.ACTION_MOUSE_WHEEL_DOWN,
	'mousedrag': xbmcgui.ACTION_MOUSE_DRAG,
	'mousemove': xbmcgui.ACTION_MOUSE_MOVE,
	'tap': xbmcgui.ACTION_TOUCH_TAP,
	'longpress': xbmcgui.ACTION_TOUCH_LONGPRESS,
	'pangesture': xbmcgui.ACTION_GESTURE_PAN,
	'zoomgesture': xbmcgui.ACTION_GESTURE_ZOOM,
	'rotategesture': xbmcgui.ACTION_GESTURE_ROTATE,
	'swipeleft': xbmcgui.ACTION_GESTURE_SWIPE_LEFT,
	'swiperight': xbmcgui.ACTION_GESTURE_SWIPE_RIGHT,
	'swipeup': xbmcgui.ACTION_GESTURE_SWIPE_UP,
	'swipedown': xbmcgui.ACTION_GESTURE_SWIPE_DOWN,
	'noop': xbmcgui.ACTION_NOOP}

class OnClickHandler():

	def __init__(self):
		self.clicks = {}
		self.focus = {}
		self.action_maps = {}

	def click(self, button_ids):
		def decorator(f):
			if isinstance(button_ids, list):
				for button_id in button_ids:
					self.clicks[button_id] = f
			else:
				self.clicks[button_ids] = f
			return f
		return decorator

	def action(self, builtin_name, button_ids):
		def decorator(f):
			action_name = ACTIONS[builtin_name]
			if action_name not in self.action_maps:
				self.action_maps[action_name] = {}
			if isinstance(button_ids, list):
				for button_id in button_ids:
					self.action_maps[action_name][button_id] = f
			else:
				self.action_maps[action_name][button_ids] = f
			return f
		return decorator

	def focus(self, button_ids):
		def decorator(f):
			if isinstance(button_ids, list):
				for button_id in button_ids:
					self.focus[button_id] = f
			else:
				self.focus[button_ids] = f
			return f
		return decorator

	def serve(self, control_id, wnd):
		view_function = self.clicks.get(control_id)
		if view_function:
			self.attach_control_attribs(wnd, control_id)
			return view_function(wnd)

	def serve_action(self, action, control_id, wnd):
		wnd.action_id = action.getId()
		self.attach_control_attribs(wnd, control_id)
		if action.getId() not in self.action_maps:
			return None
		dct = self.action_maps[action.getId()]
		all_func = dct.get('*')
		if all_func:
			all_func(wnd)
		ctl_func = dct.get(control_id)
		if ctl_func:
			return ctl_func(wnd)

	def attach_control_attribs(self, wnd, control_id):
		wnd.control_id = control_id
		try:
			wnd.control = wnd.getControl(control_id)
		except:
			wnd.control = None
		try:
			wnd.listitem = wnd.control.getSelectedItem()
		except:
			wnd.listitem = None