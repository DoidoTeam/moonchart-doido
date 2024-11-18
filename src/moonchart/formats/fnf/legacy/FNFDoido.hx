package moonchart.formats.fnf.legacy;

import moonchart.backend.FormatData;
import moonchart.backend.Timing;
import moonchart.backend.Util;
import moonchart.formats.BasicFormat;
import moonchart.formats.fnf.legacy.FNFLegacy;

typedef FNFDoido = FNFDoidoBasic<FNFLegacyFormat>;

@:private
@:noCompletion
class FNFDoidoBasic<T:FNFLegacyFormat> extends FNFLegacyBasic<T>
{
	public static function __getFormat():FormatData
	{
		return {
			ID: FNF_DOIDO,
			name: "FNF (Doido Engine)",
			description: "FNF legacy... but beautiful....",
			extension: "json",
			formatFile: FNFLegacy.formatFile,
			hasMetaFile: FALSE,
			metaFileExtension: "json",
			handler: FNFDoido
		}
	}

	public function new(?data:{song:T})
	{
		super(data);
		beautify = true;
	}
}
