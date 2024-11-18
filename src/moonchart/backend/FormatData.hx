package moonchart.backend;

import moonchart.formats.*;
import moonchart.formats.fnf.*;
import moonchart.formats.fnf.legacy.*;
import moonchart.formats.BasicFormat.DynamicFormat;

enum abstract PossibleValue(Int) from Int to Int
{
	var FALSE = 0;
	var TRUE = 1;
	var POSSIBLE = 2;
}

// Keeping for backwards compat, should prob at this with macros too
enum abstract Format(String) from String to String
{
	var FNF_DOIDO;
	var FNF_LEGACY;
	var FNF_LEGACY_PSYCH;
	var FNF_LEGACY_FPS_PLUS;
	var FNF_KADE;
	var FNF_MARU;
	var FNF_CODENAME;
	var FNF_LUDUM_DARE;
	var FNF_VSLICE;
	var GUITAR_HERO;
	var OSU_MANIA;
	var QUAVER;
	var STEPMANIA;
	var STEPMANIA_SHARK;
	var MIDI;

	#if !macro
	public static function getList():Array<FormatData>
	{
		return [
			FNFDoido.__getFormat(),
			FNFLegacy.__getFormat(),
			FNFPsych.__getFormat(),
			FNFFpsPlus.__getFormat(),
			FNFKade.__getFormat(),
			FNFMaru.__getFormat(),
			FNFCodename.__getFormat(),
			FNFLudumDare.__getFormat(),
			FNFVSlice.__getFormat(),
			GuitarHero.__getFormat(),
			Quaver.__getFormat(),
			StepMania.__getFormat(),
			StepManiaShark.__getFormat(),
			Midi.__getFormat()
		];
	}
	#end
}

typedef FormatData =
{
	ID:Format,
	name:String,
	description:String,
	extension:String,
	hasMetaFile:PossibleValue,
	?metaFileExtension:String,
	?packedExtension:String,
	?specialValues:Array<String>,
	?findMeta:Array<String>->String,
	?formatFile:(String, String) -> Array<String>,
	handler:Class<DynamicFormat>
}
