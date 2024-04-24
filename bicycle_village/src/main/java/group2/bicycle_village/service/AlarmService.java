package group2.bicycle_village.service;

import group2.bicycle_village.common.dto.AlarmDTO;
import group2.bicycle_village.dao.AlarmDAO;

import java.sql.SQLException;

public interface AlarmService {
    int insert(String id, AlarmDTO alarm) throws SQLException;
}
