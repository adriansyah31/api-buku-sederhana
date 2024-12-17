<?php
header("Content-Type: application/json");
require 'db.php';

$method = $_SERVER['REQUEST_METHOD'];
$input = json_decode(file_get_contents('php://input'), true);

switch ($method) {
    case 'GET':
        if (isset($_GET['id'])) {
            $stmt = $pdo->prepare("SELECT * FROM books WHERE id = ?");
            $stmt->execute([$_GET['id']]);
            $data = $stmt->fetch(PDO::FETCH_ASSOC);
        } else {
            $stmt = $pdo->query("SELECT * FROM books");
            $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
        echo json_encode($data);
        break;

    case 'POST':
        if (isset($input['judul'], $input['pengarang'], $input['penerbit'], $input['tahun'], $input['tempat_terbit'], $input['jenis'])) {
            $stmt = $pdo->prepare("INSERT INTO users (judul, pengarang, penerbit, tahun, tempat_terbit, jenis) VALUES (?, ?, ?, ?, ?, ?)");
            $stmt->execute([$input['judul'], $input['pengarang'], $input['penerbit'], $input['tahun'], $input['tempat_terbit'], $input['jenis']]);
            echo json_encode(['message' => 'User created successfully', 'id' => $pdo->lastInsertId()]);
        } else {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid input']);
        }
        break;

    case 'PUT':
        if (isset($_GET['id'], $input['judul'], $input['pengarang'], $input['penerbit'], $input['tahun'], $input['tempat_terbit'], $input['jenis'])) {
            $stmt = $pdo->prepare("UPDATE users SET judul = ?, pengarang = ?, penerbit = ?, tahun = ?, tmpat_terbit = ?, jenis = ?, WHERE id = ?");
            $stmt->execute([$input['judul'], $input['pengarang'], $input['penerbit'], $input['tahun'], $input['tempat_terbit'], $input['jenis'], $_GET['id']]);
            echo json_encode(['message' => 'User updated successfully']);
        } else {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid input']);
        }
        break;

    case 'DELETE':
        if (isset($_GET['id'])) {
            $stmt = $pdo->prepare("DELETE FROM books WHERE id = ?");
            $stmt->execute([$_GET['id']]);
            echo json_encode(['message' => 'User deleted successfully']);
        } else {
            http_response_code(400);
            echo json_encode(['error' => 'Invalid input']);
        }
        break;

    default:
        http_response_code(405);
        echo json_encode(['error' => 'Method not allowed']);
        break;
}
?>
