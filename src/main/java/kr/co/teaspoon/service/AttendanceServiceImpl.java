package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.AttendanceDAO;
import kr.co.teaspoon.dao.MemberDAO;
import kr.co.teaspoon.dto.Attendance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private AttendanceDAO attendanceDAO;

    @Autowired
    private MemberDAO memberDAO;

    @Override
    public List<String> attendanceList(String id) throws Exception {
        return attendanceDAO.attendanceList(id);
    }

    @Override
    public boolean isAttendance(String id) throws Exception {
        return false;
    }

    @Override
    public int addAttend(String id) throws Exception {
        return 0;
    }
}
