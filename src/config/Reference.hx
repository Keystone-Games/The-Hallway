package config;

import haxe.io.Path;
import lime.system.System;

class Reference
{
	public static final APP_NAME = "The Hallway";
	public static final APP_ID = "p5_the_hallway";
	public static final APP_VERSION = "0.0.0.1";

	public static final OPTIONS_FILE_PATH = Path.join([System.applicationStorageDirectory, "config.json"]);
}
