package org.sunw.self.client.common.domain;

import lombok.Data;

@Data
public class ResultDTO {
	boolean isSuccess;
	String message;
	//dto나 vo
	Object data;
}
