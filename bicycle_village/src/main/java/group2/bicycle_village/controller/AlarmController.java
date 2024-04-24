package group2.bicycle_village.controller;

import group2.bicycle_village.common.dto.AlarmDTO;
import group2.bicycle_village.service.AlarmService;
import group2.bicycle_village.service.AlarmServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.PrintWriter;

public class AlarmController implements RestController {
    private AlarmService alarmService = new AlarmServiceImpl();

    public void insert(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();
        String id = (String)session.getAttribute("loginId");
//        String board = (String)session.getAttribute("board");

        String board = "insert";
        int result = 0;
        if(board != null) {
            try {
                result = alarmService.insert(id, new AlarmDTO("board insert", 0, "alarm.jsp"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        PrintWriter out = response.getWriter();
        out.print(result);
    }
}
