package com.example.model.vo;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Entity;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.Data;

@Data
@Entity 
public class ListeningtestVO {

	private int eno;
		
	@NotEmpty(message="from 값을 입력해 주세요.")
	private String from;
	
	@NotNull(message="to null")
	@NotEmpty(message="to 값을 입력해 주세요.")
	private String to;
	
	@NotNull(message="sub null")
	@NotEmpty(message="sub 값을 입력해 주세요.")
	private String sub;
	
	@NotNull(message="body null")
	@NotEmpty(message="body 값을 입력해 주세요.")
	private String body;
		
	private Timestamp date;

	private String formattedDate;
	
	public String getFormattedDate() {
	    if(this.date!=null) {
			Timestamp ts = this.date;
			Date date = new Date();
			date.setTime(ts.getTime());
			String Date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
			this.formattedDate=Date;
			return formattedDate;
	    }
	    return null;
	}
	
}






//@NotNull: null 검증
//@Min, @Max: 최소값, 최대값 검증
//@Size: 범위 검증
//@Email: e-mail 검증
//@AssertTrue: true 검증
//
//
//@NotEmpty: null이나 size가 0 검증 (String, Collection)
//@NotBlank: null이나 whitespace 검증 (String)
//@Positive, @PositiveOrZero: 숫자 검증
//@Negative, @NegativeOrZero: 숫자 검증
//@Past, @PastOrPresent: 날짜 검증
//@Future, @FutureOrPresent: 날짜 검증
//@Column
/*    @NotNull
// 정규화체크(공백이없는 2~6자리 문자)
@Pattern(regexp="\\S{2,6}", message="이름은 2~6자로 입력해주세요.")    
private String name;
@Column
@NotNull
@Pattern(regexp="\\d{1,3}", message="숫자만 입력가능합니다.")
// int형태는 size체크 불가 
private String age;
@Id    // 테이블의 primary key로 매핑됨
@Size(min=4, max=8, message="아이디는 4~8자리이어야 합니다.")
private String id;
@Column
@NotNull
@Pattern(regexp="\\S", message="공백문자를 입력할 수 없습니다.")
private String address;	*/
	