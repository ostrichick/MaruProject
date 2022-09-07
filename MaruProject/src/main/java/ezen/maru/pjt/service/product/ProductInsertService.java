package ezen.maru.pjt.service.product;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import ezen.maru.pjt.dao.ProductDao;
import ezen.maru.pjt.vo.FileVo;
import ezen.maru.pjt.vo.ProductVo;

@Service("p_insert")
public class ProductInsertService implements ProductService {
	private ProductDao productDao;

	@Autowired(required = false)
	public ProductInsertService(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Override
	public int productAdd(ProductVo productVo, MultipartRequest uploadFile1, MultipartRequest uploadFile2,
			HttpServletRequest req) {

		String directory = "C:\\Users\\MYCOM\\Dropbox\\PC\\Music\\221025\\workspace\\model1pjt\\src\\main\\webapp\\upload";
		// 경로 지정할 때 역슬러스 두개 \\ 사용하거나 슬러시 한개 / 사용

		int sizeLimit = 100 * 1024 * 1024; // 100mb
		MultipartRequest multi = new MultipartRequest(request, directory, sizeLimit, "UTF-8",
				new DefaultFileRenamePolicy());

		String file_system = multi.getFilesystemName("uploadFile1"); // 파일을 업로드한 form의 parameter 이름 - 실제 서버상의 파일이름
		String file_original = multi.getOriginalFileName("uploadFile1"); // 유저가 업로드할 당시의 원래 파일이름

		String realFileName2 = multi.getFilesystemName("uploadFile2");
		String originFileName2 = multi.getOriginalFileName("uploadFile2");

		String realFileName3 = multi.getFilesystemName("uploadFile3");
		String originFileName3 = multi.getOriginalFileName("uploadFile3");

		List<MultipartFile> fileList = uploadFile1.getFiles("uploadFile1");
		String upload_dir = "resources/upload";
		String realPath = req.getServletContext().getRealPath(upload_dir);
		// request.getServletContext() : Servlet3.0부터 지원
		System.out.println("STS의 실제 저장경로: " + realPath);
		System.out.println("fileList.size() : " + fileList.size());
		if (fileList.size() > 0) {
			for (int i = 0; i < fileList.size(); i++) {
				String origin_filename = fileList.get(i).getOriginalFilename();

				int dot_idx = origin_filename.lastIndexOf(".");
				String fileName1 = origin_filename.substring(0, dot_idx);
				String extension = origin_filename.substring(dot_idx + 1);
				String fileName2 = fileName1
						+ new SimpleDateFormat("_yyyyMMdd_hhmmss").format(System.currentTimeMillis());
				String system_filename = fileName2 + "." + extension;

				String fullPath1 = realPath + origin_filename;
				String fullPath2 = realPath + system_filename;

				try {
					// 업로드된 파일을 새롭게 만들어진 경로에 저장함
					fileList.get(i).transferTo(new File(fullPath1));
					fileList.get(i).transferTo(new File(fullPath2));

					// 썸네일 생성
					File originFile = new File(fullPath1);
					File thumbnail = new File(realPath, "s_" + origin_filename);
					BufferedImage image1 = ImageIO.read(originFile);
					BufferedImage image2 = new BufferedImage(300, 200, BufferedImage.TYPE_3BYTE_BGR);
					Graphics2D graphic = image2.createGraphics();
					graphic.drawImage(image1, 0, 0, 300, 200, null);
					ImageIO.write(image2, "png", thumbnail);

				} catch (Exception e) {
					e.printStackTrace();
				}

				switch (i) {
				case 0:
					FileVo thumbnail = new FileVo();
					thumbnail.setFile_original(origin_filename);
					thumbnail.setFile_system(system_filename);
					productVo.setFile_extension(extension);
//					boardVo.setOrigin_filename1(origin_filename);
//					boardVo.setSystem_filename1(system_filename);
					break;
				case 1:
					productVo.setOrigin_filename2(origin_filename);
					productVo.setSystem_filename2(system_filename);
					break;
				case 2:
					productVo.setOrigin_filename3(origin_filename);
					productVo.setSystem_filename3(system_filename);
				}
			}
		}
		return productDao.productAdd(productVo, fileVo1, fileVo2);
	}

}
