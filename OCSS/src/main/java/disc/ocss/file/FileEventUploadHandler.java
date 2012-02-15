package disc.ocss.file;

import javax.servlet.http.HttpServletRequest;

import jcf.upload.FileInfo;
import jcf.upload.MultiPartInfo;
import jcf.upload.handler.UploadEventHandler;
import jcf.upload.persistence.PersistenceManager;

public class FileEventUploadHandler implements UploadEventHandler {

	@Override
	public String createFileNameIfAccepted(String arg0, FileInfo arg1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getFolder(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getMaxUploadSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void postprocess(String arg0, MultiPartInfo arg1,
			PersistenceManager arg2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void prepareStorage(PersistenceManager arg0, String arg1) {
		// TODO Auto-generated method stub

	}

}
