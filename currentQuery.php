    $clientID = mysqli_real_escape_string($conn, $_POST['appointment_y']);
    $AppID = mysqli_real_escape_string($conn, $_POST['appID']);
    //$UserID = $_SESSION['UID'];
    $UserID = 58;

    $fetch_appointments = "SELECT AppointmentID, ServiceProviderID, PracticeID, ClientName, ClientEmail, ClientTel, 
    Message, AppointmentDate, DATE_FORMAT(AppointmentDate, '%W %D %M %Y') AS DATESELECTED,
    DATE_FORMAT(AppointmentDate, '%W') AS WeekDay, From_tym, To_tym, ApprovalStatus, Comment, ApprovalDate, 
    AddedDate FROM tbl_Appointments WHERE ServiceProviderID = $UserID AND ApprovalStatus = 'Pending'";
