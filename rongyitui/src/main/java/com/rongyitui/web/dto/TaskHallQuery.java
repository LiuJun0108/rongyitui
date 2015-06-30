package com.rongyitui.web.dto;

/**
 * 任务大厅查询条件
 * 
 * @author LiuJun
 *
 */
public class TaskHallQuery {
	private int type;
	private int reward;
	private int cycle;

	public TaskHallQuery(int type, int reward, int cycle) {
		super();
		this.type = type;
		this.reward = reward;
		this.cycle = cycle;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getReward() {
		return reward;
	}

	public void setReward(int reward) {
		this.reward = reward;
	}

	public int getCycle() {
		return cycle;
	}

	public void setCycle(int cycle) {
		this.cycle = cycle;
	}

	public ValueScope getRewardValueScope() {
		int minValue = 0;
		int maxValue = 0;
		if (reward == 1) {
			maxValue = 4;
		} else if (reward == 2) {
			minValue = 5;
			maxValue = 10;
		} else if (reward == 3) {
			minValue = 11;
			maxValue = 50;
		} else if (reward == 4) {
			minValue = 51;
		}
		return new ValueScope(minValue, maxValue);
	}

	public ValueScope getCycleValueScope() {
		int minValue = 0;
		int maxValue = 0;
		if (cycle == 1) {
			maxValue = 6;
		} else if (cycle == 2) {
			minValue = 7;
			maxValue = 10;
		} else if (cycle == 3) {
			minValue = 11;
			maxValue = 14;
		} else if (cycle == 4) {
			minValue = 15;
		}
		return new ValueScope(minValue, maxValue);
	}

	public class ValueScope {
		private int minValue;
		private int maxValue;

		public ValueScope(int minValue, int maxValue) {
			super();
			this.minValue = minValue;
			this.maxValue = maxValue;
		}

		public int getMinValue() {
			return minValue;
		}

		public void setMinValue(int minValue) {
			this.minValue = minValue;
		}

		public int getMaxValue() {
			return maxValue;
		}

		public void setMaxValue(int maxValue) {
			this.maxValue = maxValue;
		}

	}
}