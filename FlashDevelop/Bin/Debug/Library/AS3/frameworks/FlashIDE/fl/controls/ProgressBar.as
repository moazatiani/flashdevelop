﻿package fl.controls
{
	import fl.controls.progressBarClasses.IndeterminateBar;
	import fl.controls.ProgressBarDirection;
	import fl.controls.ProgressBarMode;
	import fl.core.InvalidationType;
	import fl.core.UIComponent;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.ProgressEvent;

	/**
	 * Dispatched when the load operation completes. 
	 */
	[Event("complete", type="flash.events.Event")] 
	/**
	 * Dispatched as content loads in event mode or polled mode. 
	 */
	[Event("progress", type="flash.events.ProgressEvent")] 
	/**
	 * Name of the class to use as the default icon. Setting any other icon  
	 */
	[Style(name="icon", type="Class")] 
	/**
	 * Name of the class to use as the progress indicator track.
	 */
	[Style(name="trackSkin", type="Class")] 
	/**
	 * Name of the class to use as the determinate progress bar.
	 */
	[Style(name="barSkin", type="Class")] 
	/**
	 * Name of the class to use as the indeterminate progress bar. This is passed to the  
	 */
	[Style(name="indeterminateSkin", type="Class")] 
	/**
	 * The class to use as a renderer for the indeterminate bar animation.  
	 */
	[Style(name="indeterminateBar", type="Class")] 
	/**
	 * The padding that separates the progress bar indicator from the track, in pixels.
	 */
	[Style(name="barPadding", type="Number", format="Length")] 

	/**
	 * The ProgressBar component displays the progress of content that is 
	 */
	public class ProgressBar extends UIComponent
	{
		/**
		 * @private (protected)
		 */
		protected var track : DisplayObject;
		/**
		 * @private (protected)
		 */
		protected var determinateBar : DisplayObject;
		/**
		 * @private (protected)
		 */
		protected var indeterminateBar : UIComponent;
		/**
		 * @private (protected)
		 */
		protected var _direction : String;
		/**
		 * @private (protected)
		 */
		protected var _indeterminate : Boolean;
		/**
		 * @private (protected)
		 */
		protected var _mode : String;
		/**
		 * @private (protected)
		 */
		protected var _minimum : Number;
		/**
		 * @private (protected)
		 */
		protected var _maximum : Number;
		/**
		 * @private (protected)
		 */
		protected var _value : Number;
		/**
		 * @private (protected)
		 */
		protected var _source : Object;
		/**
		 * @private (protected)
		 */
		protected var _loaded : Number;
		/**
		 * @private
		 */
		private static var defaultStyles : Object;

		/**
		 * Indicates the fill direction for the progress bar. A value of 
		 */
		public function get direction () : String;
		/**
		 * @private (setter)
		 */
		public function set direction (value:String) : void;
		/**
		 * Gets or sets a value that indicates the type of fill that the progress 
		 */
		public function get indeterminate () : Boolean;
		/**
		 * @private (setter)
		 */
		public function set indeterminate (value:Boolean) : void;
		/**
		 * Gets or sets the minimum value for the progress bar when the 
		 */
		public function get minimum () : Number;
		/**
		 * @private (setter)
		 */
		public function set minimum (value:Number) : void;
		/**
		 * Gets or sets the maximum value for the progress bar when the 
		 */
		public function get maximum () : Number;
		/**
		 * @private (setter)
		 */
		public function set maximum (value:Number) : void;
		/**
		 * Gets or sets a value that indicates the amount of progress that has 
		 */
		public function get value () : Number;
		/**
		 * @private (setter)
		 */
		public function set value (value:Number) : void;
		/**
		 * @private (internal)
		 */
		public function set sourceName (name:String) : void;
		/**
		 * Gets or sets a reference to the content that is being loaded and for
		 */
		public function get source () : Object;
		/**
		 * @private (setter)
		 */
		public function set source (value:Object) : void;
		/**
		 * Gets a number between 0 and 100 that indicates the percentage 
		 */
		public function get percentComplete () : Number;
		/**
		 * Gets or sets the method to be used to update the progress bar. 
		 */
		public function get mode () : String;
		/**
		 * @private (setter)
		 */
		public function set mode (value:String) : void;

		/**
		 * @copy fl.core.UIComponent#getStyleDefinition()
		 */
		public static function getStyleDefinition () : Object;
		/**
		 * Creates a new ProgressBar component instance.
		 */
		public function ProgressBar ();
		/**
		 * Sets the state of the bar to reflect the amount of progress made when 
		 */
		public function setProgress (value:Number, maximum:Number) : void;
		/**
		 * Resets the progress bar for a new load operation.
		 */
		public function reset () : void;
		/**
		 * @private (protected)
		 */
		protected function _setProgress (value:Number, maximum:Number, fireEvent:Boolean = false) : void;
		/**
		 * @private (protected)
		 */
		protected function setIndeterminate (value:Boolean) : void;
		/**
		 * @private (protected)
		 */
		protected function resetProgress () : void;
		/**
		 * @private (protected)
		 */
		protected function setupSourceEvents () : void;
		/**
		 * @private (protected)
		 */
		protected function cleanupSourceEvents () : void;
		/**
		 * @private (protected)
		 */
		protected function pollSource (event:Event) : void;
		/**
		 * @private (protected)
		 */
		protected function handleProgress (event:ProgressEvent) : void;
		/**
		 * @private (protected)
		 */
		protected function handleComplete (event:Event) : void;
		/**
		 * @private (protected)
		 */
		protected function draw () : void;
		/**
		 * @private (protected)
		 */
		protected function drawTrack () : void;
		/**
		 * @private (protected)
		 */
		protected function drawBars () : void;
		/**
		 * @private (protected)
		 */
		protected function drawDeterminateBar () : void;
		/**
		 * @private (protected)
		 */
		protected function drawLayout () : void;
		/**
		 * @private (protected)
		 */
		protected function configUI () : void;
	}
}