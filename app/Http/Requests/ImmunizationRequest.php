<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class ImmunizationRequest extends FormRequest {
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules() {
        switch($this->method()){
            case 'POST': {
                return [
                    'id_baby' => 'required|exists:babies,id',
                    'id_vaccine' => 'required|exists:vaccine,id',
                    'bulan' => 'required|integer',
                    'date' => 'required|date',
                ];
            } break;
            case 'PUT': {
                return [
                    'id_baby' => 'required|exists:babies,id',
                    'id_vaccine' => 'required|exists:vaccine,id',
                    'bulan' => 'required|integer',
                    'date' => 'required|date',
                ];
            } break;
        }
    }

    protected function failedValidation(Validator $validator) {
        throw new HttpResponseException(response()->json([
            'message' => $validator->errors()],
        422));
    }
}
