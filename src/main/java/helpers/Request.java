package helpers;


import java.io.*;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.util.Properties;

import static database.DatabaseUtils.executeSql;
import static helpers.LoggerCommands.loggerWarn;

public class Request {
    private Request() {

        // Throw an exception if this ever *is* called
        throw new AssertionError("Instantiating Request class.");
    }

    private static final String CLASS_NAME = Request.class.getName();
    private static final Properties requestProperties;

    public static final String NEW_FREE_NORMAL_REQUEST;
    public static final String WAITING_FREE_NORMAL_REQUEST;
    public static final String WORK_FREE_NORMAL_REQUEST;
    public static final String CLOSED_FREE_NORMAL_REQUEST;
    public static final String CANCELLED_FREE_NORMAL_REQUEST;
    public static final String REJECTED_FREE_NORMAL_REQUEST;
    public static final String NEW_PAY_NORMAL_REQUEST;
    public static final String WAITING_PAY_NORMAL_REQUEST;
    public static final String WORK_PAY_NORMAL_REQUEST;
    public static final String CLOSED_PAY_NORMAL_REQUEST;
    public static final String CANCELLED_PAY_NORMAL_REQUEST;
    public static final String REJECTED_PAY_NORMAL_REQUEST;
    public static final String NEW_FREE_PAY_NORMAL_REQUEST;
    public static final String WAITING_FREE_PAY_NORMAL_REQUEST;
    public static final String WORK_FREE_PAY_NORMAL_REQUEST;
    public static final String CANCELLED_FREE_PAY_NORMAL_REQUEST;
    public static final String REJECTED_FREE_PAY_NORMAL_REQUEST;
    public static final String NEW_FREE_EMERGENCY_REQUEST;
    public static final String WAITING_FREE_EMERGENCY_REQUEST;
    public static final String WORK_FREE_EMERGENCY_REQUEST;
    public static final String CLOSED_FREE_EMERGENCY_REQUEST;
    public static final String CANCELLED_FREE_EMERGENCY_REQUEST;
    public static final String REJECTED_FREE_EMERGENCY_REQUEST;
    public static final String NEW_PAY_EMERGENCY_REQUEST;
    public static final String WAITING_PAY_EMERGENCY_REQUEST;
    public static final String WORK_PAY_EMERGENCY_REQUEST;
    public static final String CLOSED_PAY_EMERGENCY_REQUEST;
    public static final String CANCELLED_PAY_EMERGENCY_REQUEST;
    public static final String REJECTED_PAY_EMERGENCY_REQUEST;
    public static final String NEW_FREE_PAY_EMERGENCY_REQUEST;
    public static final String WAITING_FREE_PAY_EMERGENCY_REQUEST;
    public static final String WORK_FREE_PAY_EMERGENCY_REQUEST;
    public static final String CANCELLED_FREE_PAY_EMERGENCY_REQUEST;
    public static final String REJECTED_FREE_PAY_EMERGENCY_REQUEST;

    static {
        requestProperties = new Properties();
        InputStream is = AppData.class.getResourceAsStream("/requests.properties");
        try {
            requestProperties.load(new InputStreamReader(is, Charset.forName("UTF-8")));
        } catch (Exception e) {
            loggerWarn(CLASS_NAME, "Something wrong with InputStream in file 'requestProperties.properties'.", e);
        }

        NEW_FREE_NORMAL_REQUEST = requestProperties.getProperty("NewFreeNormalRequest");
        WAITING_FREE_NORMAL_REQUEST = requestProperties.getProperty("WaitingFreeNormalRequest");
        WORK_FREE_NORMAL_REQUEST = requestProperties.getProperty("WorkFreeNormalRequest");
        CLOSED_FREE_NORMAL_REQUEST = requestProperties.getProperty("ClosedFreeNormalRequest");
        CANCELLED_FREE_NORMAL_REQUEST = requestProperties.getProperty("CancelledFreeNormalRequest");
        REJECTED_FREE_NORMAL_REQUEST = requestProperties.getProperty("RejectedFreeNormalRequest");
        NEW_PAY_NORMAL_REQUEST = requestProperties.getProperty("NewPayNormalRequest");
        WAITING_PAY_NORMAL_REQUEST = requestProperties.getProperty("WaitingPayNormalRequest");
        WORK_PAY_NORMAL_REQUEST = requestProperties.getProperty("WorkPayNormalRequest");
        CLOSED_PAY_NORMAL_REQUEST = requestProperties.getProperty("ClosedPayNormalRequest");
        CANCELLED_PAY_NORMAL_REQUEST = requestProperties.getProperty("CancelledPayNormalRequest");
        REJECTED_PAY_NORMAL_REQUEST = requestProperties.getProperty("RejectedPayNormalRequest");
        NEW_FREE_PAY_NORMAL_REQUEST = requestProperties.getProperty("NewFreePayNormalRequest");
        WAITING_FREE_PAY_NORMAL_REQUEST = requestProperties.getProperty("WaitingFreePayNormalRequest");
        WORK_FREE_PAY_NORMAL_REQUEST = requestProperties.getProperty("WorkFreePayNormalRequest");
        CANCELLED_FREE_PAY_NORMAL_REQUEST = requestProperties.getProperty("CancelledFreePayNormalRequest");
        REJECTED_FREE_PAY_NORMAL_REQUEST = requestProperties.getProperty("RejectedFreePayNormalRequest");
        NEW_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("NewFreeEmergencyRequest");
        WAITING_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("WaitingFreeEmergencyRequest");
        WORK_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("WorkFreeEmergencyRequest");
        CLOSED_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("ClosedFreeEmergencyRequest");
        CANCELLED_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("CancelledFreeEmergencyRequest");
        REJECTED_FREE_EMERGENCY_REQUEST = requestProperties.getProperty("RejectedFreeEmergencyRequest");
        NEW_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("NewPayEmergencyRequest");
        WAITING_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("WaitingPayEmergencyRequest");
        WORK_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("WorkPayEmergencyRequest");
        CLOSED_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("ClosedPayEmergencyRequest");
        CANCELLED_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("CancelledPayEmergencyRequest");
        REJECTED_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("RejectedPayEmergencyRequest");
        NEW_FREE_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("NewFreePayEmergencyRequest");
        WAITING_FREE_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("WaitingFreePayEmergencyRequest");
        WORK_FREE_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("WorkFreePayEmergencyRequest");
        CANCELLED_FREE_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("CancelledFreePayEmergencyRequest");
        REJECTED_FREE_PAY_EMERGENCY_REQUEST = requestProperties.getProperty("RejectedFreePayEmergencyRequest");
    }

    private static void setValuesToProperties(String valueProperty, String keyProperty) {
        try (OutputStream output = new FileOutputStream(System.getProperty("user.dir") + "/src/main/resources/requests.properties");) {
            requestProperties.setProperty(valueProperty, keyProperty);
            requestProperties.store(output, null);
        } catch (IOException e) {
            loggerWarn(CLASS_NAME, "Something wrong with InputStream in file 'requestProperties.properties'.", e);
        }
    }

    public static void setRequestNumbersToProperties() throws SQLException {
        setValuesToProperties("NewFreeNormalRequest", executeSql("NewFreeNormalRequest.sql"));
        setValuesToProperties("WaitingFreeNormalRequest", executeSql("WaitingFreeNormalRequest.sql"));
        setValuesToProperties("WorkFreeNormalRequest", executeSql("WorkFreeNormalRequest.sql"));
        setValuesToProperties("ClosedFreeNormalRequest", executeSql("ClosedFreeNormalRequest.sql"));
        setValuesToProperties("CancelledFreeNormalRequest", executeSql("CancelledFreeNormalRequest.sql"));
        setValuesToProperties("RejectedFreeNormalRequest", executeSql("RejectedFreeNormalRequest.sql"));
        setValuesToProperties("WaitingPayNormalRequest", executeSql("WaitingPayNormalRequest.sql"));
        setValuesToProperties("WorkPayNormalRequest", executeSql("WorkPayNormalRequest.sql"));
        setValuesToProperties("ClosedPayNormalRequest", executeSql("ClosedPayNormalRequest.sql"));
        setValuesToProperties("CancelledPayNormalRequest", executeSql("CancelledPayNormalRequest.sql"));
        setValuesToProperties("RejectedPayNormalRequest", executeSql("RejectedPayNormalRequest.sql"));
        setValuesToProperties("NewFreePayNormalRequest", executeSql("NewFreePayNormalRequest.sql"));
        setValuesToProperties("WaitingFreePayNormalRequest", executeSql("WaitingFreePayNormalRequest.sql"));
        setValuesToProperties("WorkFreePayNormalRequest", executeSql("WorkFreePayNormalRequest.sql"));
        setValuesToProperties("CancelledFreePayNormalRequest", executeSql("CancelledFreePayNormalRequest.sql"));
        setValuesToProperties("RejectedFreePayNormalRequest", executeSql("RejectedFreePayNormalRequest.sql"));
        setValuesToProperties("NewFreeEmergencyRequest", executeSql("NewFreeEmergencyRequest.sql"));
        setValuesToProperties("WaitingFreeEmergencyRequest", executeSql("WaitingFreeEmergencyRequest.sql"));
        setValuesToProperties("WorkFreeEmergencyRequest", executeSql("WorkFreeEmergencyRequest.sql"));
        setValuesToProperties("ClosedFreeEmergencyRequest", executeSql("ClosedFreeEmergencyRequest.sql"));
        setValuesToProperties("CancelledFreeEmergencyRequest", executeSql("CancelledFreeEmergencyRequest.sql"));
        setValuesToProperties("RejectedFreeEmergencyRequest", executeSql("RejectedFreeEmergencyRequest.sql"));
        setValuesToProperties("NewPayEmergencyRequest", executeSql("NewPayEmergencyRequest.sql"));
        setValuesToProperties("WaitingPayEmergencyRequest", executeSql("WaitingPayEmergencyRequest.sql"));
        setValuesToProperties("WorkPayEmergencyRequest", executeSql("WorkPayEmergencyRequest.sql"));
        setValuesToProperties("ClosedPayEmergencyRequest", executeSql("ClosedPayEmergencyRequest.sql"));
        setValuesToProperties("CancelledPayEmergencyRequest", executeSql("CancelledPayEmergencyRequest.sql"));
        setValuesToProperties("RejectedPayEmergencyRequest", executeSql("RejectedPayEmergencyRequest.sql"));
        setValuesToProperties("NewFreePayEmergencyRequest", executeSql("NewFreePayEmergencyRequest.sql"));
        setValuesToProperties("WaitingFreePayEmergencyRequest", executeSql("WaitingFreePayEmergencyRequest.sql"));
        setValuesToProperties("WorkFreePayEmergencyRequest", executeSql("WorkFreePayEmergencyRequest.sql"));
        setValuesToProperties("CancelledFreePayEmergencyRequest", executeSql("CancelledFreePayEmergencyRequest.sql"));
        setValuesToProperties("RejectedFreePayEmergencyRequest", executeSql("RejectedFreePayEmergencyRequest.sql"));
        setValuesToProperties("NewPayNormalRequest", executeSql("NewPayNormalRequest.sql"));
    }

//    private static String getPropertyValue(String keyProperty) {
//        return requestProperties.getProperty(keyProperty);
//    }
//
//    public static void getRequestNumber(String status, String payable, String emergency) {
//        switch (emergency) {
//            case "Обычная":
//                switch (payable) {
//                    case "Бесплатная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewFreeNormalRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingFreeNormalRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkFreeNormalRequest");
//                                break;
//                            case "Закрыта":
//                                getPropertyValue("ClosedFreeNormalRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledFreeNormalRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedFreeNormalRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    case "Бесплатно-платная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewFreePayNormalRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingFreePayNormalRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkFreePayNormalRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledFreePayNormalRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedFreePayNormalRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    case "Платная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewPayNormalRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingPayNormalRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkPayNormalRequest");
//                                break;
//                            case "Закрыта":
//                                getPropertyValue("ClosedPayNormalRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledPayNormalRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedPayNormalRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    default:
//                        throw new IllegalArgumentException("No such payable: " + payable);
//                }
//                break;
//            case "Аварийная":
//                switch (payable) {
//                    case "Бесплатная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewFreeEmergencyRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingFreeEmergencyRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkFreeEmergencyRequest");
//                                break;
//                            case "Закрыта":
//                                getPropertyValue("ClosedFreeEmergencyRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledFreeEmergencyRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedFreeEmergencyRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    case "Бесплатно-платная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewFreePayEmergencyRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingFreePayEmergencyRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkFreePayEmergencyRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledFreePayEmergencyRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedFreePayEmergencyRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    case "Платная":
//                        switch (status) {
//                            case "Новая":
//                                getPropertyValue("NewPayEmergencyRequest");
//                                break;
//                            case "Ожидает обработки":
//                                getPropertyValue("WaitingPayEmergencyRequest");
//                                break;
//                            case "В работе":
//                                getPropertyValue("WorkPayEmergencyRequest");
//                                break;
//                            case "Закрыта":
//                                getPropertyValue("ClosedPayEmergencyRequest");
//                                break;
//                            case "Отменена":
//                                getPropertyValue("CancelledPayEmergencyRequest");
//                                break;
//                            case "Отклонена":
//                                getPropertyValue("RejectedPayEmergencyRequest");
//                                break;
//                            default:
//                                throw new IllegalArgumentException("No such status: " + status);
//                        }
//                        break;
//                    default:
//                        throw new IllegalArgumentException("No such payable: " + payable);
//                }
//                break;
//            default:
//                throw new IllegalArgumentException("No such emergency: " + emergency);
//        }
//    }

}
