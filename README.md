# NewFolder Right-Click option

**Add a "New Folder" option to the top of right-click context menu when clicking on any empty space in a folder or on the desktop.** <p>
This new option allows you to create a new folder directly in the clicked location with an automatically assigned unique name (e.g., "New Folder", "New Folder 1", etc.). <p>
![Image](https://github.com/user-attachments/assets/d07ff2c1-458b-4c00-a094-5aa9bc9c2983)   ![image](https://github.com/user-attachments/assets/06435746-3678-48a4-ba04-f1d14766b3e8)
<p>

The bat file should be extracted to a Windows folder on system and then a registry entry should be added in order to appear on each file right click.
The zip contains four files:
1. The actual batch file which is triggered to create a folder (`NewFolder.bat`).
2. A registry merge file that helps add the necessary entries to the registry (`NewFolder.reg`)
3. A batch file to install automatically the script (`AutoInstall.bat`) <p>
<p><p>


**Automatic Installation (Recommended)** <p>
1. Download the release package https://github.com/limbo666/NewFolder_RightClick/releases .
2. Extract the files to a folder of your choice. Inside, you’ll find three files: AutoInstall.bat, NewFolder.bat, and NewFolder.reg.
3. Right-click on AutoInstall.bat and choose **Run as Administrator** to ensure proper access to the Windows directory and registry.
    The script will automatically copy the NewFolder.bat to the C:\Windows directory and merge the registry entries from NewFolder.reg to add the context menu option.
 <p>
      <p>
          
**Manual Installation**<p>
1. Download the release package https://github.com/limbo666/NewFolder_RightClick/releases .
2. Extract the files to a folder of your choice. Inside, you’ll find three files: AutoInstall.bat, NewFolder.bat, and NewFolder.reg.
3. Copy the NewFolder.bat file to the C:\Windows\ directory.
4. Merge the Registry Entry: Double-click the NewFolder.reg file to merge it into the Windows registry. This will add the "New Folder" option to the context menu.
 <p>
      <p>
          
**Verify Installation** <p>
Right-click on an empty space in any folder or on the desktop and ensure the New Folder option appears at the top of the context menu.
 <p>
      <p>
          
**Uninstallation** <p>
To remove the "New Folder" option from the context menu:
1. Delete the Registry Entry: Open regedit, navigate to HKEY_CLASSES_ROOT\Directory\Background\shell\NewFolder, and delete the entire NewFolder key.
2. Remove the Batch File: Navigate to C:\Windows and delete the NewFolder.bat file.

Enjoy
