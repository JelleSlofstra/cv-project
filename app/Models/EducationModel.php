<?php

namespace App\Models;

use App\Libraries\MySql;
use PDO;

class EducationModel extends Model
{

    // Name of the table
    protected static $table = "educations";

    // Max number of records when fetching all records from table
    protected static $limit;

    // Non writable fields
    protected static $guarded = [
        'id',
        'updated',
        'deleted',
        'updated_by',
        'deleted_by',
    ]; 


    /**
     * Get educations from certain user
     * @param $user_id (int) the ID of the user
     * @return object user data
     */
    public static function userEducations(int $user_id)
    {
        if ((int)$user_id === 0) {
            return false;
        }

        $sql = "SELECT * FROM " . self::$table . " WHERE user_id=" . $user_id . " AND deleted IS NULL";

        return MySql::query($sql)->fetchAll(PDO::FETCH_CLASS);
    }
}