from lerobot.datasets.lerobot_dataset import LeRobotDataset, LeRobotDatasetMetadata


class ergocubDataset(LeRobotDataset):

    def __init__(
        self,
        *args,
        modality=None,
        input_modalities=None,
        output_modalities=None,
        **kwargs,
    ):
        super().__init__(*args, **kwargs)
        self.modality = modality
        self.input_modalities = input_modalities
        self.output_modalities = output_modalities
        if modality is not None:
            self.input_indices = []
            self.output_indices = []
            self.input_names = []
            self.output_names = []

            for modality_name in input_modalities:
                start = modality["state"][modality_name]["start"]
                end = modality["state"][modality_name]["end"]
                self.input_indices += list(range(start, end))
                self.input_names += modality["state"][modality_name]["names"]
            for modality_name in output_modalities:
                start = modality["action"][modality_name]["start"]
                end = modality["action"][modality_name]["end"]
                self.output_indices += list(range(start, end))
                self.output_names += modality["action"][modality_name]["names"]

    def __getitem__(self, idx):
        # Call parent __getitem__
        result = super().__getitem__(idx)
        if self.modality is not None:
            result["observation.state"] = result["observation.state"][
                self.input_indices
            ]
            result["action"] = result["action"][:, self.output_indices]
        return result
