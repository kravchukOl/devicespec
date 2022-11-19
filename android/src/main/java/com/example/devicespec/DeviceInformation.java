package com.example.devicespec;

import java.util.Enumeration;
import java.util.Properties;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.graphics.Point;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;

public class DeviceInformation {

	public static boolean isConnectedToMobileInternet(Context c) {
		// mobile
		State mobile = ((ConnectivityManager) c
				.getSystemService(Context.CONNECTIVITY_SERVICE))
				.getNetworkInfo(ConnectivityManager.TYPE_MOBILE).getState();
		return mobile == NetworkInfo.State.CONNECTED
				|| mobile == NetworkInfo.State.CONNECTING;
	}

	public static boolean isInternetAvailable(Context c) {
		ConnectivityManager connectivityManager = (ConnectivityManager) c
				.getSystemService(Context.CONNECTIVITY_SERVICE);
		NetworkInfo activeNetworkInfo = connectivityManager
				.getActiveNetworkInfo();
		return activeNetworkInfo != null;
	}


    public static String getOSVersion()  {return System.getProperty("os.version");}
	public static String getOSAPILevel()  {return android.os.Build.VERSION.INCREMENTAL;}
	public static String getDevice() {return android.os.Build.DEVICE; }
	public static String getModel() {return android.os.Build.MODEL;}
	public static String getRelease() {return android.os.Build.VERSION.RELEASE;}
	public static String getBrand() {return android.os.Build.BRAND; }
	public static String getProduct() {return android.os.Build.PRODUCT;}
	public static String getManufacturer() {return  Build.MANUFACTURER;}
	public static String getTags() {return  android.os.Build.TAGS;}
	public static String getDisplay() {return android.os.Build.DISPLAY;}
	public static String getCPU_ABI() {return android.os.Build.CPU_ABI;}
	public static String getCPU_ABI2() {return android.os.Build.CPU_ABI2;}
	public static String getUnknown() {return  Build.UNKNOWN;}
	public static String getHardware() {return Build.HARDWARE;}
	public static String getUser() {return Build.USER;}
	public static String getHost() {return  Build.HOST;}

	public static String getSerial() {
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
			return Build.getSerial();
		}
		else {
			return Build.SERIAL;
		}
	}


	public static String getDeviceBaseInfo() {

		String s = "";

		try {
			s += "\n OS Version: "      + System.getProperty("os.version")      + "(" + android.os.Build.VERSION.INCREMENTAL + ")";
			s += "\n OS API Level: "    + android.os.Build.VERSION.SDK_INT;
			s += "\n Device: "          + android.os.Build.DEVICE;
			s += "\n Model (and Product): " + android.os.Build.MODEL            + " ("+ android.os.Build.PRODUCT + ")";

			s += "\n RELEASE: "         + android.os.Build.VERSION.RELEASE;
			s += "\n BRAND: "           + android.os.Build.BRAND;
			s += "\n DISPLAY: "         + android.os.Build.DISPLAY;
			s += "\n CPU_ABI: "         + android.os.Build.CPU_ABI;
			s += "\n CPU_ABI2: "        + android.os.Build.CPU_ABI2;
			s += "\n UNKNOWN: "         + android.os.Build.UNKNOWN;
			s += "\n HARDWARE: "        + android.os.Build.HARDWARE;
			s += "\n Build ID: "        + android.os.Build.ID;
			s += "\n MANUFACTURER: "    + android.os.Build.MANUFACTURER;
			s += "\n SERIAL: "          + android.os.Build.SERIAL;
			s += "\n USER: "            + android.os.Build.USER;
			s += "\n HOST: "            + android.os.Build.HOST;

		} catch (Exception e) {

		}

		return s;
	}


	public static boolean isPositioningViaWifiEnabled(Context context) {
		ContentResolver cr = context.getContentResolver();
		String enabledProviders = Settings.Secure.getString(cr,
				Settings.Secure.LOCATION_PROVIDERS_ALLOWED);
		if (!TextUtils.isEmpty(enabledProviders)) {
			// not the fastest way to do that :)
			String[] providersList = TextUtils.split(enabledProviders, ",");
			for (String provider : providersList) {
				if (LocationManager.NETWORK_PROVIDER.equals(provider)) {
					return true;
				}
			}
		}
		return false;
	}

	public static boolean isScreenOn(Context context) {
		return ((PowerManager) context.getSystemService(Context.POWER_SERVICE))
				.isScreenOn();
	}

	public static boolean isConnectedToWifi(Context c) {
		// via vwifi
		State wifi = ((ConnectivityManager) c
				.getSystemService(Context.CONNECTIVITY_SERVICE))
				.getNetworkInfo(ConnectivityManager.TYPE_WIFI).getState();
		return wifi == NetworkInfo.State.CONNECTED
				|| wifi == NetworkInfo.State.CONNECTING;
	}

	/**
	 * @return true if the current thread is the UI thread
	 */
	public static boolean isUiThread() {
		return Looper.getMainLooper().getThread() == Thread.currentThread();
	}

	/**
	 * @param a
	 * @return the size with size.x=width and size.y=height
	 */
	public static Point getScreenSize(Activity a) {
		return getScreenSize(a.getWindowManager().getDefaultDisplay());
	}

	@SuppressLint("NewApi")
	public static Point getScreenSize(Display d) {
		Point size = new Point();
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.HONEYCOMB) {
			d.getSize(size);
		} else {
			size.x = d.getWidth();
			size.y = d.getHeight();
		}
		return size;
	}

}